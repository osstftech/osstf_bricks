extension {{name.pascalCase()}}Mapper on {{name.pascalCase()}}Model {
  {{name.pascalCase()}}Entity toEntity() {
    return {{name.pascalCase()}}Entity(
      //TODO: Map your model properties to entity properties
    );
  }
  {{name.pascalCase()}}Model fromEntity({{name.pascalCase()}}Entity entity) {
    return {{name.pascalCase()}}Model(
      //TODO: Map your entity properties to model properties
    );
  }
}