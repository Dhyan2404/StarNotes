package com.google.android.libraries.vision.visionkit.pipeline.alt;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.apps.common.proguard.UsedByNative;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbki;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbko;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbkx;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbtp;
import com.google.android.gms.internal.mlkit_vision_text_bundled_common.zbuq;
import com.google.android.libraries.vision.visionkit.pipeline.zbad;
import com.google.android.libraries.vision.visionkit.pipeline.zber;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

@Keep
@UsedByNative("pipeline_jni.cc")
/* loaded from: classes5.dex */
public class PipelineException extends Exception {
    private static final String ROOT_CAUSE_DELIMITER = "#vk ";
    private final zbd statusCode;
    private final String statusMessage;

    @Nullable
    private final zber visionkitStatus;

    public PipelineException(int i, @NonNull String str) {
        super(zbd.values()[i].zba() + ": " + str);
        this.statusCode = zbd.values()[i];
        this.statusMessage = str;
        this.visionkitStatus = null;
    }

    @NonNull
    public List<zbad> getComponentStatuses() {
        zber zberVar = this.visionkitStatus;
        return zberVar != null ? zberVar.zbf() : zbkx.zbh();
    }

    public zbki<String> getRootCauseMessage() {
        Object next;
        Object obj;
        if (!this.statusMessage.contains(ROOT_CAUSE_DELIMITER)) {
            return zbki.zbd();
        }
        List zbb = zbko.zba(ROOT_CAUSE_DELIMITER).zbb(this.statusMessage);
        if (zbb instanceof List) {
            List list = zbb;
            if (list.isEmpty()) {
                throw new NoSuchElementException();
            }
            obj = list.get(list.size() - 1);
        } else {
            Iterator it2 = zbb.iterator();
            do {
                next = it2.next();
            } while (it2.hasNext());
            obj = next;
        }
        return zbki.zbe((String) obj);
    }

    public zbd getStatusCode() {
        return this.statusCode;
    }

    @NonNull
    public String getStatusMessage() {
        return this.statusMessage;
    }

    private PipelineException(zber zberVar) {
        super(zbd.values()[zberVar.zba()].zba() + ": " + zberVar.zbe());
        this.statusCode = zbd.values()[zberVar.zba()];
        this.statusMessage = zberVar.zbe();
        this.visionkitStatus = zberVar;
    }

    @Keep
    @UsedByNative("pipeline_jni.cc")
    public PipelineException(byte[] bArr) throws zbuq {
        this(zber.zbd(bArr, zbtp.zba()));
    }
}
