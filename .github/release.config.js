module.exports = {
  branches: ['main', 'develop'],
  plugins: [
    ['@semantic-release/commit-analyzer', {
      preset: 'angular',
      releaseRules: [
        {type: 'docs', scope: 'README', release: 'patch'},
        {type: 'feat', release: 'minor'},
        {type: 'fix', release: 'patch'},
        {type: 'perf', release: 'patch'},
        {type: 'revert', release: 'patch'},
        {type: 'style', release: 'patch'},
        {type: 'test', release: 'patch'},
        {type: 'ci', release: 'patch'},
        {type: 'chore', release: 'patch'},
        {type: 'build', release: 'patch'},
        {scope: 'no-release', release: false},
        {type: 'BREAKING CHANGE', release: 'major'},
        {type: 'breaking', release: 'major'},
        {type: 'major', release: 'major'},
        {type: 'minor', release: 'minor'},
        {type: 'patch', release: 'patch'}
      ]
    }],
    ['@semantic-release/release-notes-generator', {
      preset: 'angular',
      presetConfig: {
        types: [
          {type: 'feat', section: 'Features', hidden: false},
          {type: 'fix', section: 'Bug Fixes', hidden: false},
          {type: 'docs', section: 'Documentation', hidden: false},
          {type: 'style', section: 'Styling', hidden: false},
          {type: 'refactor', section: 'Code Refactoring', hidden: false},
          {type: 'perf', section: 'Performance Improvements', hidden: false},
          {type: 'test', section: 'Tests', hidden: false},
          {type: 'build', section: 'Build System', hidden: false},
          {type: 'ci', section: 'Continuous Integration', hidden: false},
          {type: 'chore', section: 'Chores', hidden: false},
          {type: 'revert', section: 'Reverts', hidden: false}
        ]
      }
    }],
    ['@semantic-release/github', {
      assets: [
        {path: 'Dockerfile', label: 'Dockerfile'},
        {path: 'flake.lock', label: 'flake.lock'}
      ]
    }],
    ['@semantic-release/git', {
      assets: ['package.json', 'flake.lock'],
      message: 'chore(release): ${nextRelease.version} [skip ci]\n\n${nextRelease.notes}'
    }]
  ]
}; 