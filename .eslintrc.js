module.exports = {
  root: true,
  parserOptions: {
    ecmaVersion: 2017,
    sourceType: 'module'
  },
  env: {
    browser: true,
    node: true
  },
  plugins: ['scanjs-rules', 'no-unsafe-innerhtml', 'ember', 'prettier'],
  extends: ['eslint:recommended', 'plugin:ember/recommended'],
  globals: {
    expectAssertion: true,
    expectDeprecation: true,
    expectNoDeprecation: true,
    expectWarning: true,
    expectNoWarning: true,
    ignoreAssertion: true,
    ignoreDeprecation: true,

    // A safe subset of 'browser:true':
    window: true,
    console: true,
    document: true,
    setTimeout: true,
    clearTimeout: true,
    setInterval: true,
    clearInterval: true,

    Symbol: true,
    WeakMap: true,
    Map: true,

    // Frameworks
    Foundation: true,
    ActiveXObject: true
  },
  rules: {
    'no-console': ['error', { allow: ['warn', 'error', 'info'] }],
    'no-case-declarations': 0,
    'no-useless-escape': 0,

    // ToDo: Consider removing to be more strict
    'no-constant-condition': 0,

    // prettier
    'prettier/prettier': 2,

    // eslint-plugin-ember
    'ember/avoid-leaking-state-in-components': 2,
    'ember/no-observers': 2,
    'ember/closure-actions': 1,
    'ember/no-empty-attrs': 1,
    'ember/no-global-jquery': 1,
    'ember/jquery-ember-run': 1,
    'ember/use-ember-get-and-set': 1,

    // CodeClimate
    complexity: [2, 14],
    'max-statements': [2, 40],

    // eslint-plugin-scanjs rules
    'no-unsafe-innerhtml/no-unsafe-innerhtml': 2,
    'scanjs-rules/accidental_assignment': 1,
    'scanjs-rules/assign_to_hostname': 1,
    'scanjs-rules/assign_to_href': 1,
    'scanjs-rules/assign_to_location': 1,
    'scanjs-rules/assign_to_onmessage': 1,
    'scanjs-rules/assign_to_pathname': 1,
    'scanjs-rules/assign_to_protocol': 1,
    'scanjs-rules/assign_to_search': 1,
    'scanjs-rules/assign_to_src': 1,
    'scanjs-rules/call_Function': 1,
    'scanjs-rules/call_addEventListener': 2,
    'scanjs-rules/call_addEventListener_deviceproximity': 1,
    'scanjs-rules/call_addEventListener_message': 1,
    'scanjs-rules/call_connect': 0,
    'scanjs-rules/call_eval': 2,
    'scanjs-rules/call_execScript': 2,
    'scanjs-rules/call_hide': 0,
    'scanjs-rules/call_open_remote=true': 1,
    'scanjs-rules/call_parseFromString': 1,
    'scanjs-rules/call_setImmediate': 1,
    'scanjs-rules/call_setInterval': 2,
    'scanjs-rules/call_setTimeout': 2,
    'scanjs-rules/identifier_indexedDB': 0,
    'scanjs-rules/identifier_localStorage': 0,
    'scanjs-rules/identifier_sessionStorage': 0,
    'scanjs-rules/new_Function': 1,
    'scanjs-rules/property_addIdleObserver': 1,
    'scanjs-rules/property_createContextualFragment': 1,
    'scanjs-rules/property_crypto': 1,
    'scanjs-rules/property_geolocation': 1,
    'scanjs-rules/property_getUserMedia': 1,
    'scanjs-rules/property_indexedDB': 0,
    'scanjs-rules/property_localStorage': 0,
    'scanjs-rules/property_mgmt': 1,
    'scanjs-rules/property_sessionStorage': 0
  }
};
