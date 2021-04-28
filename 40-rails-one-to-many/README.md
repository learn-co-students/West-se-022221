# Intro to Rails

## SWBATs
* Issues with plain HTML form
* form_tag, form_for, form_with
* link_to
* collection_select

### Deliverables
- [x] Display a list of all pets
- [x] Create new pets
- [ ] edit existing pets
- [ ] Delete pets

### Sample HTML Form

```html
  <form action='/pets' method="post">
    <label for='name'> Pet name: </label>
    <input type='text' name='name' placeholder="Enter pet name" required />

    <label for='species'> Pet species: </label>
    <input type='text' name='species' placeholder="Enter pet species" required />

    <label for='store'> Select Store: </label>
    <select name='store'>
      <option> Replace this with actual stores </option>
    </select>

    <input type='submit' value='Create Pet' />
  </form>
```

[Rails Guides](http://guides.rubyonrails.org/index.html)
