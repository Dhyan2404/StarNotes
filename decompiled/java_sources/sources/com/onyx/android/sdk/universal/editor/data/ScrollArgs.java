package com.onyx.android.sdk.universal.editor.data;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.base.p018rx.RxScrollerInfo;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u000e\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 A2\u00020\u0001:\u0001AB\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R\u001a\u0010\u0017\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0011\"\u0004\b\u0019\u0010\u0013R\u001a\u0010\u001a\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0011\"\u0004\b\u001c\u0010\u0013R\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0011\"\u0004\b%\u0010\u0013R\u001a\u0010&\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0011\"\u0004\b(\u0010\u0013R\u001a\u0010)\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0006\"\u0004\b+\u0010\bR\u0011\u0010,\u001a\u00020-¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u001a\u00100\u001a\u00020-X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010/\"\u0004\b2\u00103R\u001a\u00104\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\u0011\"\u0004\b6\u0010\u0013R\u001a\u00107\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010\u0011\"\u0004\b9\u0010\u0013R \u0010:\u001a\b\u0012\u0004\u0012\u00020<0;X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@¨\u0006B"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;", "", "()V", "action", "", "getAction", "()I", "setAction", "(I)V", "isFlingFinished", "", Constants.BOOLEAN_VALUE_SIG, "setFlingFinished", "(Z)V", "newX", "", "getNewX", "()F", "setNewX", "(F)V", "newY", "getNewY", "setNewY", "offsetX", "getOffsetX", "setOffsetX", "offsetY", "getOffsetY", "setOffsetY", "scrollBeginBoxId", "", "getScrollBeginBoxId", "()Ljava/lang/String;", "setScrollBeginBoxId", "(Ljava/lang/String;)V", "scrollBeginX", "getScrollBeginX", "setScrollBeginX", "scrollBeginY", "getScrollBeginY", "setScrollBeginY", "source", "getSource", "setSource", "timeStamp", "", "getTimeStamp", "()J", "upToDownTime", "getUpToDownTime", "setUpToDownTime", "(J)V", "velocityX", "getVelocityX", "setVelocityX", "velocityY", "getVelocityY", "setVelocityY", "visibleBoxList", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVisibleBoxList", "()Ljava/util/List;", "setVisibleBoxList", "(Ljava/util/List;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ScrollArgs {
    public static final int ACTION_FLING = 2;
    public static final int ACTION_SCROLLING = 1;
    public static final int ACTION_SCROLL_BEGIN = 0;
    public static final int ACTION_SCROLL_END = 3;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int SOURCE_EDITOR_VIEW = 0;
    public static final int SOURCE_SCROLL_BAR = 1;
    private int action;
    private boolean isFlingFinished;
    private float newX;
    private float newY;
    private float offsetX;
    private float offsetY;
    private float scrollBeginX;
    private float scrollBeginY;
    private int source;
    private long upToDownTime;
    private float velocityX;
    private float velocityY;

    @NotNull
    private String scrollBeginBoxId = "";

    @NotNull
    private List<BoxInfo> visibleBoxList = new ArrayList();
    private final long timeStamp = System.currentTimeMillis();

    @Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010J\u0016\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\rJ\u0006\u0010\u0014\u001a\u00020\u000bJ\u000e\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0017J\u0016\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs$Companion;", "", "()V", "ACTION_FLING", "", "ACTION_SCROLLING", "ACTION_SCROLL_BEGIN", "ACTION_SCROLL_END", "SOURCE_EDITOR_VIEW", "SOURCE_SCROLL_BAR", "createFling", "Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;", "velocityX", "", "velocityY", "scrollBeginBoxId", "", "createScrollBegin", "offsetX", "offsetY", "createScrollEnd", "createScrolling", PrivilegedApp.f6532i, "Lcom/onyx/android/sdk/base/rx/RxScrollerInfo;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ScrollArgs createFling(float velocityX, float velocityY, @NotNull String scrollBeginBoxId) {
            Intrinsics.checkNotNullParameter(scrollBeginBoxId, "scrollBeginBoxId");
            ScrollArgs scrollArgs = new ScrollArgs();
            scrollArgs.setAction(2);
            scrollArgs.setVelocityX(velocityX);
            scrollArgs.setVelocityY(velocityY);
            scrollArgs.setScrollBeginBoxId(scrollBeginBoxId);
            return scrollArgs;
        }

        @NotNull
        public final ScrollArgs createScrollBegin(float offsetX, float offsetY) {
            ScrollArgs scrollArgs = new ScrollArgs();
            scrollArgs.setAction(0);
            scrollArgs.setOffsetX(offsetX);
            scrollArgs.setOffsetY(offsetY);
            return scrollArgs;
        }

        @NotNull
        public final ScrollArgs createScrollEnd() {
            ScrollArgs scrollArgs = new ScrollArgs();
            scrollArgs.setAction(3);
            return scrollArgs;
        }

        @NotNull
        public final ScrollArgs createScrolling(float offsetX, float offsetY) {
            ScrollArgs scrollArgs = new ScrollArgs();
            scrollArgs.setAction(1);
            scrollArgs.setOffsetX(offsetX);
            scrollArgs.setOffsetY(offsetY);
            return scrollArgs;
        }

        private Companion() {
        }

        @NotNull
        public final ScrollArgs createScrolling(@NotNull RxScrollerInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            ScrollArgs scrollArgs = new ScrollArgs();
            scrollArgs.setAction(1);
            scrollArgs.setNewX(info.getNewX());
            scrollArgs.setNewY(info.getNewY());
            scrollArgs.setFlingFinished(info.isFinished());
            return scrollArgs;
        }
    }

    public final int getAction() {
        return this.action;
    }

    public final float getNewX() {
        return this.newX;
    }

    public final float getNewY() {
        return this.newY;
    }

    public final float getOffsetX() {
        return this.offsetX;
    }

    public final float getOffsetY() {
        return this.offsetY;
    }

    @NotNull
    public final String getScrollBeginBoxId() {
        return this.scrollBeginBoxId;
    }

    public final float getScrollBeginX() {
        return this.scrollBeginX;
    }

    public final float getScrollBeginY() {
        return this.scrollBeginY;
    }

    public final int getSource() {
        return this.source;
    }

    public final long getTimeStamp() {
        return this.timeStamp;
    }

    public final long getUpToDownTime() {
        return this.upToDownTime;
    }

    public final float getVelocityX() {
        return this.velocityX;
    }

    public final float getVelocityY() {
        return this.velocityY;
    }

    @NotNull
    public final List<BoxInfo> getVisibleBoxList() {
        return this.visibleBoxList;
    }

    /* renamed from: isFlingFinished, reason: from getter */
    public final boolean getIsFlingFinished() {
        return this.isFlingFinished;
    }

    public final void setAction(int i) {
        this.action = i;
    }

    public final void setFlingFinished(boolean z) {
        this.isFlingFinished = z;
    }

    public final void setNewX(float f) {
        this.newX = f;
    }

    public final void setNewY(float f) {
        this.newY = f;
    }

    public final void setOffsetX(float f) {
        this.offsetX = f;
    }

    public final void setOffsetY(float f) {
        this.offsetY = f;
    }

    public final void setScrollBeginBoxId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.scrollBeginBoxId = str;
    }

    public final void setScrollBeginX(float f) {
        this.scrollBeginX = f;
    }

    public final void setScrollBeginY(float f) {
        this.scrollBeginY = f;
    }

    public final void setSource(int i) {
        this.source = i;
    }

    public final void setUpToDownTime(long j) {
        this.upToDownTime = j;
    }

    public final void setVelocityX(float f) {
        this.velocityX = f;
    }

    public final void setVelocityY(float f) {
        this.velocityY = f;
    }

    public final void setVisibleBoxList(@NotNull List<BoxInfo> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.visibleBoxList = list;
    }
}
