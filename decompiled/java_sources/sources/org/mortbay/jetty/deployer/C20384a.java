package org.mortbay.jetty.deployer;

import androidx.appcompat.widget.ActivityChooserModel;
import java.io.File;
import java.io.FilenameFilter;
import org.mortbay.log.Log;

/* renamed from: org.mortbay.jetty.deployer.a */
/* loaded from: classes13.dex */
public class C20384a implements FilenameFilter {

    /* renamed from: e */
    public final /* synthetic */ ContextDeployer f114855e;

    public C20384a(ContextDeployer contextDeployer) {
        this.f114855e = contextDeployer;
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        try {
            return str.endsWith(ActivityChooserModel.f1436y);
        } catch (Exception e) {
            Log.warn(e);
            return false;
        }
    }
}
