def test_repo_layout_exists():
    import os
    for p in ["data/raw","src/analysis","ethics","outputs/maps"]:
        assert os.path.isdir(p)
