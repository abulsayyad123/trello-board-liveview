import Sortable from 'sortablejs';

TrelloBoard = {
  mounted(){ 
    const planning = document.getElementById('planning')
    const progress = document.getElementById('progress')
    const completed = document.getElementById('completed')
    const pushEvent = (target, taskId) => {
      this.pushEvent("move_task", {target, taskId})
    }

    Sortable.create(planning, {
      group: 'shared',
      animation: 150,
      sort: false,
      onEnd: function (/**Event*/evt) {
        pushEvent(evt.to.id, evt.item.dataset.taskId) 
      }
    });

    Sortable.create(progress, {
      group: 'shared',
      animation: 150,
      sort: false,
      onEnd: function (/**Event*/evt) {
        pushEvent(evt.to.id, evt.item.dataset.taskId) 
      }
    });

    Sortable.create(completed, {
      group: 'shared',
      animation: 150,
      sort: false,
      onEnd: function (/**Event*/evt) {
        pushEvent(evt.to.id, evt.item.dataset.taskId) 
      }
    });
  }
}
export default TrelloBoard
