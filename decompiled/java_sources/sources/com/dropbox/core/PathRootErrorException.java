package com.dropbox.core;

import com.dropbox.core.p006v2.common.PathRootError;

/* loaded from: classes4.dex */
public class PathRootErrorException extends DbxException {
    private static final long serialVersionUID = 0;
    private final PathRootError pathRootError;

    public PathRootErrorException(String str, String str2, PathRootError pathRootError) {
        super(str, str2);
        this.pathRootError = pathRootError;
    }

    public PathRootError getPathRootError() {
        return this.pathRootError;
    }
}
