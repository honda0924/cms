$(function(){
  function appendInProgressContact(contact) {
    var html = `<tr>
                    <td>
                      <p class="client">${ client.company_name1}${client.company_name2}</p>
                    </td>
                    <td>
                      <a class="waves-effect waves-light btn" href="/clients/${client.id}">詳細</a>
                    </td>
                </tr>`
    return html;
  }

  function NoContact(msg) {
    var html = `<tr>
                  <td>
                    <p class="client">${ msg }</p>
                  </td>
                </tr>`
    return html;
  }

  $("#in_progress_search").on("keyup",function(){
    var input = $("#in_progress_search").val();
    $.ajax({
      type: 'GET',
      url: '/clients',
      data: { in_progress_search: input },
      dataType: 'json'
    })
    .done(function(contacts){
      if (contacts.length !==0) {
        $("#in-progress-search-result").empty();
        clients.forEach(function(client){
          html = appendClient(client);
          $("#in-progress-search-result").append(html);
        })
      }else{
        $("#in-progress-search-result").empty();
        html = NoClient("一致するユーザーがいません");
        $("#in-progress-search-result").append(html);
      }
    })
    .fail(function(){
      alert('ユーザー検索に失敗しました');
    });
  });
});
