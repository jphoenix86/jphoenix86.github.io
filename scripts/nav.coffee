---
---

window.addEventListener 'scroll', (e) => checkDistance(e)
window.addEventListener 'touchmove', (e) => checkDistance(e)
window.addEventListener 'gesturechange', (e) => checkDistance(e)

checkDistance = () ->
  introContainerDistance = document.getElementsByClassName("intro-header")[0].clientHeight
  smallSpaceDistance = document.getElementsByClassName("space-extra-small")[0].clientHeight
  navContainerDistance = smallSpaceDistance + introContainerDistance
  distanceToTop = window.pageYOffset
  toggleElements(distanceToTop, navContainerDistance)

toggleElements = (distanceToTop, navContainerDistance) ->
  nav = document.getElementsByClassName("section-nav")[0]
  entry = document.getElementById("currentEntry")
  if distanceToTop >= navContainerDistance
    addClassToElement(nav, 'fixed-nav')
    addClassToElement(entry, 'nav-padding')
  else
    removeClassFromElement(nav, 'fixed-nav')
    removeClassFromElement(entry, 'nav-padding')

addClassToElement = (element, classToAdd) ->
    element.classList.add(classToAdd)

removeClassFromElement = (element, classToRemove) ->
    element.classList.remove(classToRemove)
