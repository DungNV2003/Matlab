% Định nghĩa cấu trúc struct có tên là 'Person'
Person.name = '';
Person.age = 0;
Person.gender = '';

% Tạo một đối tượng Person mới
person1 = struct('name', 'John', 'age', 25, 'gender', 'Male');

% Hiển thị thông tin của person1
disp('Thông tin của person1:');
disp(['Họ tên: ', person1.name]);
disp(['Tuổi: ', num2str(person1.age)]);
disp(['Giới tính: ', person1.gender]);
