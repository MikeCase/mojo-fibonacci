from python import Python

fn main() raises:
    
    let requests = Python.import_module("requests")
    # URL you want to send a GET request to
    let url = 'https://jsonplaceholder.typicode.com/todos/33'

    # Send the GET request
    let response = requests.delete(url)

    # Check if the request was successful (status code 200)
    if response.status_code == 200:
        print('Request was successful')
        print('Response content:')
        print(response.text)
    else:
        print('Request failed with status code', response.status_code)
    

    
