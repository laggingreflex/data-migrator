part of appwrite;

class Users extends Service {
    Users(Client client): super(client);

     /// List Users
     ///
     /// Get a list of all the project's users. You can use the query params to
     /// filter your results.
     ///
     Future<models.UserList> list({String? search, int? limit, int? offset, String? cursor, String? cursorDirection, String? orderType}) async {
        final String path = '/users';

        final Map<String, dynamic> params = {
            'search': search,
            'limit': limit,
            'offset': offset,
            'cursor': cursor,
            'cursorDirection': cursorDirection,
            'orderType': orderType,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return models.UserList.fromMap(res.data);
    }

     /// Create User
     ///
     /// Create a new user.
     ///
     Future<models.User> create({required String userId, required String email, required String password, String? name}) async {
        final String path = '/users';

        final Map<String, dynamic> params = {
            'userId': userId,
            'email': email,
            'password': password,
            'name': name,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.post, path: path, params: params, headers: headers);
        return models.User.fromMap(res.data);
    }

     /// Get usage stats for the users API
     Future<models.UsageUsers> getUsage({String? range, String? provider}) async {
        final String path = '/users/usage';

        final Map<String, dynamic> params = {
            'range': range,
            'provider': provider,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return models.UsageUsers.fromMap(res.data);
    }

     /// Get User
     ///
     /// Get a user by its unique ID.
     ///
     Future<models.User> get({required String userId}) async {
        final String path = '/users/{userId}'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return models.User.fromMap(res.data);
    }

     /// Delete User
     ///
     /// Delete a user by its unique ID.
     ///
     Future delete({required String userId}) async {
        final String path = '/users/{userId}'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Update Email
     ///
     /// Update the user email by its unique ID.
     ///
     Future<models.User> updateEmail({required String userId, required String email}) async {
        final String path = '/users/{userId}/email'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
            'email': email,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);
        return models.User.fromMap(res.data);
    }

     /// Get User Logs
     ///
     /// Get the user activity logs list by its unique ID.
     ///
     Future<models.LogList> getLogs({required String userId, int? limit, int? offset}) async {
        final String path = '/users/{userId}/logs'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
            'limit': limit,
            'offset': offset,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return models.LogList.fromMap(res.data);
    }

     /// Update Name
     ///
     /// Update the user name by its unique ID.
     ///
     Future<models.User> updateName({required String userId, required String name}) async {
        final String path = '/users/{userId}/name'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
            'name': name,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);
        return models.User.fromMap(res.data);
    }

     /// Update Password
     ///
     /// Update the user password by its unique ID.
     ///
     Future<models.User> updatePassword({required String userId, required String password}) async {
        final String path = '/users/{userId}/password'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
            'password': password,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);
        return models.User.fromMap(res.data);
    }

     /// Get User Preferences
     ///
     /// Get the user preferences by its unique ID.
     ///
     Future<models.Preferences> getPrefs({required String userId}) async {
        final String path = '/users/{userId}/prefs'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return models.Preferences.fromMap(res.data);
    }

     /// Update User Preferences
     ///
     /// Update the user preferences by its unique ID. The object you pass is stored
     /// as is, and replaces any previous value. The maximum allowed prefs size is
     /// 64kB and throws error if exceeded.
     ///
     Future<models.Preferences> updatePrefs({required String userId, required Map prefs}) async {
        final String path = '/users/{userId}/prefs'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
            'prefs': prefs,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);
        return models.Preferences.fromMap(res.data);
    }

     /// Get User Sessions
     ///
     /// Get the user sessions list by its unique ID.
     ///
     Future<models.SessionList> getSessions({required String userId}) async {
        final String path = '/users/{userId}/sessions'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.get, path: path, params: params, headers: headers);
        return models.SessionList.fromMap(res.data);
    }

     /// Delete User Sessions
     ///
     /// Delete all user's sessions by using the user's unique ID.
     ///
     Future deleteSessions({required String userId}) async {
        final String path = '/users/{userId}/sessions'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Delete User Session
     ///
     /// Delete a user sessions by its unique ID.
     ///
     Future deleteSession({required String userId, required String sessionId}) async {
        final String path = '/users/{userId}/sessions/{sessionId}'.replaceAll('{userId}', userId).replaceAll('{sessionId}', sessionId);

        final Map<String, dynamic> params = {
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.delete, path: path, params: params, headers: headers);
        return  res.data;
    }

     /// Update User Status
     ///
     /// Update the user status by its unique ID.
     ///
     Future<models.User> updateStatus({required String userId, required bool status}) async {
        final String path = '/users/{userId}/status'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
            'status': status,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);
        return models.User.fromMap(res.data);
    }

     /// Update Email Verification
     ///
     /// Update the user email verification status by its unique ID.
     ///
     Future<models.User> updateVerification({required String userId, required bool emailVerification}) async {
        final String path = '/users/{userId}/verification'.replaceAll('{userId}', userId);

        final Map<String, dynamic> params = {
            'emailVerification': emailVerification,
        };

        final Map<String, String> headers = {
            'content-type': 'application/json',
        };

        final res = await client.call(HttpMethod.patch, path: path, params: params, headers: headers);
        return models.User.fromMap(res.data);
    }
}