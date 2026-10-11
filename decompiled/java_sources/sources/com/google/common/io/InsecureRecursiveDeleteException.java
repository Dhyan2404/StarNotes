package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.sunia.HTREnginev2.ynf;
import java.nio.file.FileSystemException;
import javax.annotation.CheckForNull;

@Beta
@GwtIncompatible
@ynf
/* loaded from: classes6.dex */
public final class InsecureRecursiveDeleteException extends FileSystemException {
    public InsecureRecursiveDeleteException(@CheckForNull String str) {
        super(str, null, "unable to guarantee security of recursive delete");
    }
}
