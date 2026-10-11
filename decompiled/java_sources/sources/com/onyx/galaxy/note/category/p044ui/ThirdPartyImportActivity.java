package com.onyx.galaxy.note.category.p044ui;

import android.content.ClipData;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.fragment.app.C1126e;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.IntentUtils;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.galaxy.note.NoteApp;
import com.onyx.galaxy.note.account.p043ui.RecentLoginActivity;
import com.onyx.galaxy.note.category.action.SecurityCheckAction;
import com.onyx.galaxy.note.category.p044ui.ThirdPartyImportActivity;
import com.onyx.galaxy.note.common.base.BaseCompatActivity;
import com.onyx.galaxy.note.common.extension.ContextExtKt;
import com.onyx.galaxy.note.utils.LoginUtils;
import com.sagittarius.p050v6.C13086AB;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.v6l;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0014J\b\u0010\t\u001a\u00020\u0004H\u0002J\b\u0010\n\u001a\u00020\u0004H\u0002J\u0012\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\u000e\u001a\u00020\u0004H\u0002J\u0012\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u000bH\u0002R\u0016\u0010\u0012\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u000f¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/ThirdPartyImportActivity;", "Lcom/onyx/galaxy/note/common/base/BaseCompatActivity;", "Landroid/os/Bundle;", C1126e.f7693h, "", "onCreate", "Landroid/content/Intent;", v6l.f87196g, "onNewIntent", "H", "F", "", "containsIntentData", "L", "K", "I", "", "w0", "importTimerKey", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes17.dex */
public final class ThirdPartyImportActivity extends BaseCompatActivity {
    public static final long IMPORT_DELAY_TIME = 200;

    /* renamed from: w0, reason: from kotlin metadata */
    public int importTimerKey = -1;

    /* renamed from: com.onyx.galaxy.note.category.ui.ThirdPartyImportActivity$a */
    /* loaded from: classes9.dex */
    public static final class C11353a<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ SecurityCheckAction f54983f;

        public C11353a(SecurityCheckAction securityCheckAction) {
            this.f54983f = securityCheckAction;
        }

        /* renamed from: a */
        public final void m43912a(boolean z) {
            if (z) {
                NoteApp companion = NoteApp.INSTANCE.getInstance();
                if (companion != null) {
                    companion.initSdkWithAgreement();
                }
                ThirdPartyImportActivity.this.m43911L(this.f54983f.getHasAgreementBeforeCheck());
            }
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m43912a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: G */
    public static final void m43904G(ThirdPartyImportActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.finish();
    }

    /* renamed from: J */
    public static /* synthetic */ void m43905J(ThirdPartyImportActivity thirdPartyImportActivity, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        thirdPartyImportActivity.m43909I(z);
    }

    /* renamed from: M */
    public static /* synthetic */ void m43906M(ThirdPartyImportActivity thirdPartyImportActivity, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        thirdPartyImportActivity.m43911L(z);
    }

    /* renamed from: F */
    public final void m43907F() {
        SecurityCheckAction securityCheckAction = new SecurityCheckAction(this);
        securityCheckAction.build().doOnNext(new C11353a(securityCheckAction)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.ygn
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ThirdPartyImportActivity.m43904G(ThirdPartyImportActivity.this);
            }
        }).subscribe();
    }

    /* renamed from: H */
    public final void m43908H() {
        RxTimerUtil rxTimerUtil = RxTimerUtil.INSTANCE;
        rxTimerUtil.cancel(this.importTimerKey);
        this.importTimerKey = rxTimerUtil.timer(200L, TimeUnit.MILLISECONDS, new Function1<Long, Unit>() { // from class: com.onyx.galaxy.note.category.ui.ThirdPartyImportActivity$checkAndImportDelay$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                invoke(l.longValue());
                return Unit.INSTANCE;
            }

            public final void invoke(long j) {
                ThirdPartyImportActivity.this.m43907F();
            }
        });
    }

    /* renamed from: I */
    public final void m43909I(boolean containsIntentData) {
        Uri uri;
        Uri data = getIntent().getData();
        String type = getIntent().getType();
        ClipData clipData = getIntent().getClipData();
        String action = getIntent().getAction();
        Collection collection = null;
        if (action != null) {
            int hashCode = action.hashCode();
            if (hashCode != -1173264947) {
                if (hashCode == -58484670 && action.equals("android.intent.action.SEND_MULTIPLE")) {
                    collection = getIntent().getParcelableArrayListExtra("android.intent.extra.STREAM");
                }
            } else if (action.equals("android.intent.action.SEND") && (uri = (Uri) getIntent().getParcelableExtra("android.intent.extra.STREAM")) != null) {
                collection = CollectionKt.asList(uri);
            }
        }
        Intent intent = new Intent(this, (Class<?>) NoteListActivity.class);
        if (containsIntentData) {
            intent.addFlags(1);
            intent.setDataAndType(data, type);
            if (collection != null) {
                intent.putParcelableArrayListExtra("android.intent.extra.STREAM", new ArrayList<>(collection));
            }
            intent.setClipData(clipData);
        }
        intent.setAction(IntentUtils.ACTION_IMPORT);
        startActivity(intent);
    }

    /* renamed from: K */
    public final void m43910K() {
        ContextExtKt.startActivity(this, RecentLoginActivity.class);
    }

    /* renamed from: L */
    public final void m43911L(boolean containsIntentData) {
        if (LoginUtils.INSTANCE.isLoginRequired()) {
            m43910K();
        } else {
            m43909I(containsIntentData);
        }
    }

    @Override // com.onyx.galaxy.note.common.base.BaseCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle savedInstanceState) {
        C13086AB.m52315v(-1426063314, this, savedInstanceState);
    }

    @Override // com.onyx.galaxy.note.common.base.BaseCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onNewIntent(@NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        super.onNewIntent(intent);
        setIntent(intent);
        m43908H();
    }
}
