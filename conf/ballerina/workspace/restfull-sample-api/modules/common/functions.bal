public function pagination(int pageNumber, int pageSize) returns string {
    int offSet = (pageNumber - 1) * pageSize;
    string paginationPrefix = "&offset="+offSet.toString()+"&limit="+pageSize.toString();
    return paginationPrefix;
}