class Data {
  String key;
  int jumlah;
  Data(this.key, this.jumlah);
  @override
  String toString() {
    return '{ ${this.key}, ${this.jumlah} }';
  }
}