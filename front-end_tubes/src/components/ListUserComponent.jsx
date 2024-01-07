import React, { Component } from "react";
import UserService from "../services/UserService";

class ListUserComponent extends Component {
  constructor(props) {
    super(props);

    this.state = {
      users: [],
      showNotification: false,
    };

    this.addUser = this.addUser.bind(this);
    this.editUser = this.editUser.bind(this);
    this.deleteUser = this.deleteUser.bind(this);
  }

  deleteUser(id) {
    // Tampilkan konfirmasi sebelum menghapus
    const isConfirmed = window.confirm("Apakah Anda yakin ingin menghapus pasien ini?");

    if (isConfirmed) {
      UserService.deleteUser(id).then((res) => {
        this.setState({
          users: this.state.users.filter((user) => user.id !== id),
        });
      });
    }
  }

  viewUser(id) {
    this.props.history.push(`/view-user/${id}`);
  }

  editUser(id) {
    this.props.history.push(`/add-user/${id}`);
  }

  componentDidMount() {
    UserService.getUsers().then((res) => {
      if (res.data === null || res.data.length === 0) {
        this.props.history.push("/add-user/_add");
      } else {
        this.setState({ users: res.data });
      }
    });
  }

  addUser() {
    this.props.history.push("/add-user/_add");
  }

  render() {
    return (
      <div>
        <h2 className="text-center pt-5" style={{ fontWeight: 'bold', fontSize: '50px' }}>DATA PASIEN PUSKESMAS </h2>
        <div className="row">
          <button className="btn btn-primary" onClick={this.addUser}>
            Tambah Data
          </button>
        </div>
        <br />
        <div className="row">
          {this.state.showNotification && (
            <div className="notification">
              <span className="notification-checkmark">&#10003;</span>
              <p>Data berhasil diupdate</p>
            </div>
          )}
          <table className="table table-striped table-bordered">
            <thead>
              <tr>
                <th>Nama</th>
                <th>Usia</th>
                <th>Jenis Kelamin</th>
                <th>Alamat</th>
                <th>Deskripsi</th>
                <th>Aksi</th> {/* Kolom tambahan untuk keterangan aksi */}
              </tr>
            </thead>
            <tbody>
              {this.state.users.map((user) => (
                <tr key={user.id}>
                  <td>
                    <div>{user.nama}</div>
                  </td>
                  <td>
                    <div>{user.usia}</div>
                  </td>
                  <td>
                    <div>{user.jenis_kelamin}</div>
                  </td>
                  <td>
                    <div>{user.alamat}</div>
                  </td>
                  <td>
                    <div>{user.deskripsi}</div>
                  </td>
                  <td>
                    <button
                      onClick={() => this.editUser(user.id)}
                      className="btn btn-info"
                    >
                      Update
                    </button>
                    <button
                      style={{ marginLeft: "5px" }}
                      onClick={() => this.deleteUser(user.id)}
                      className="btn btn-danger"
                    >
                      Delete
                    </button>
                    <button
                      style={{ marginLeft: "5px" }}
                      onClick={() => this.viewUser(user.id)}
                      className="btn btn-info"
                    >
                      Detail
                    </button>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      </div>
    );
  }
}

export default ListUserComponent;
