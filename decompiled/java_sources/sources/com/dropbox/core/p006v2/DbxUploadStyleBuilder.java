package com.dropbox.core.p006v2;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxUploader;
import com.dropbox.core.util.IOUtil;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes4.dex */
public abstract class DbxUploadStyleBuilder<R, E, X extends DbxApiException> {
    public abstract DbxUploader<R, E, X> start() throws DbxException;

    public R uploadAndFinish(InputStream inputStream) throws DbxApiException, DbxException, IOException {
        return start().uploadAndFinish(inputStream);
    }

    public R uploadAndFinish(InputStream inputStream, long j) throws DbxApiException, DbxException, IOException {
        return start().uploadAndFinish(inputStream, j);
    }

    public R uploadAndFinish(InputStream inputStream, long j, IOUtil.ProgressListener progressListener) throws DbxApiException, DbxException, IOException {
        return start().uploadAndFinish(inputStream, j, progressListener);
    }

    public R uploadAndFinish(InputStream inputStream, IOUtil.ProgressListener progressListener) throws DbxApiException, DbxException, IOException {
        return start().uploadAndFinish(inputStream, progressListener);
    }
}
