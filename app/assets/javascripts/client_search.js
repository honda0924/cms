$(function(){
  function appendClient(client) {
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

  function NoClient(msg) {
    var html = `<tr>
                  <td>
                    <p class="client">${ msg }</p>
                  </td>
                </tr>`
    return html;
  }

  $("#company_search").on("keyup",function(){
    var input = $("#company_search").val();
    console.log(input)
    $.ajax({
      type: 'GET',
      url: '/clients',
      data: { company_search: input },
      dataType: 'json'
    })
    .done(function(clients){
      if (clients.length !==0) {
        $("#client-search-result").empty();
        clients.forEach(function(client){
          html = appendClient(client);
          $("#client-search-result").append(html);
        })
      }else{
        $("#client-search-result").empty();
        html = NoClient("一致するユーザーがいません");
        $("#client-search-result").append(html);
      }
    })
    .fail(function(){
      alert('ユーザー検索に失敗しました');
    });
  });
});
