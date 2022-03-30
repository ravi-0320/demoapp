class temp
{
  int? userid,id;
  String? title,body;

  temp(this.userid, this.id, this.title, this.body);

  @override
  String toString() {
    return 'temp{userid: $userid, id: $id, title: $title, body: $body}';
  }

  static temp fromMap(Map m)
  {
    return temp(m['userId'],m['id'],m['title'],m['body']);
  }
}

class student
{
  List<temp>? list;

  student(this.list);

  @override
  String toString() {
    return 'student{list: $list}';
  }

  static student fromList(List l)
  {
    List<temp> templist=[];
    l.forEach((element) {
      temp t=temp.fromMap(element);
      templist.add(t);

    });
    return student(templist);
  }


}