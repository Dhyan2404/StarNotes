package android.support.v4.media.session;

import android.annotation.SuppressLint;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes3.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final long ACTION_FAST_FORWARD = 64;
    public static final long ACTION_PAUSE = 2;
    public static final long ACTION_PLAY = 4;
    public static final long ACTION_PLAY_FROM_MEDIA_ID = 1024;
    public static final long ACTION_PLAY_FROM_SEARCH = 2048;
    public static final long ACTION_PLAY_FROM_URI = 8192;
    public static final long ACTION_PLAY_PAUSE = 512;
    public static final long ACTION_PREPARE = 16384;
    public static final long ACTION_PREPARE_FROM_MEDIA_ID = 32768;
    public static final long ACTION_PREPARE_FROM_SEARCH = 65536;
    public static final long ACTION_PREPARE_FROM_URI = 131072;
    public static final long ACTION_REWIND = 8;
    public static final long ACTION_SEEK_TO = 256;
    public static final long ACTION_SET_CAPTIONING_ENABLED = 1048576;
    public static final long ACTION_SET_PLAYBACK_SPEED = 4194304;
    public static final long ACTION_SET_RATING = 128;
    public static final long ACTION_SET_REPEAT_MODE = 262144;
    public static final long ACTION_SET_SHUFFLE_MODE = 2097152;

    @Deprecated
    public static final long ACTION_SET_SHUFFLE_MODE_ENABLED = 524288;
    public static final long ACTION_SKIP_TO_NEXT = 32;
    public static final long ACTION_SKIP_TO_PREVIOUS = 16;
    public static final long ACTION_SKIP_TO_QUEUE_ITEM = 4096;
    public static final long ACTION_STOP = 1;
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new C0071a();
    public static final int ERROR_CODE_ACTION_ABORTED = 10;
    public static final int ERROR_CODE_APP_ERROR = 1;
    public static final int ERROR_CODE_AUTHENTICATION_EXPIRED = 3;
    public static final int ERROR_CODE_CONCURRENT_STREAM_LIMIT = 5;
    public static final int ERROR_CODE_CONTENT_ALREADY_PLAYING = 8;
    public static final int ERROR_CODE_END_OF_QUEUE = 11;
    public static final int ERROR_CODE_NOT_AVAILABLE_IN_REGION = 7;
    public static final int ERROR_CODE_NOT_SUPPORTED = 2;
    public static final int ERROR_CODE_PARENTAL_CONTROL_RESTRICTED = 6;
    public static final int ERROR_CODE_PREMIUM_ACCOUNT_REQUIRED = 4;
    public static final int ERROR_CODE_SKIP_LIMIT_REACHED = 9;
    public static final int ERROR_CODE_UNKNOWN_ERROR = 0;
    private static final int KEYCODE_MEDIA_PAUSE = 127;
    private static final int KEYCODE_MEDIA_PLAY = 126;
    public static final long PLAYBACK_POSITION_UNKNOWN = -1;
    public static final int REPEAT_MODE_ALL = 2;
    public static final int REPEAT_MODE_GROUP = 3;
    public static final int REPEAT_MODE_INVALID = -1;
    public static final int REPEAT_MODE_NONE = 0;
    public static final int REPEAT_MODE_ONE = 1;
    public static final int SHUFFLE_MODE_ALL = 1;
    public static final int SHUFFLE_MODE_GROUP = 2;
    public static final int SHUFFLE_MODE_INVALID = -1;
    public static final int SHUFFLE_MODE_NONE = 0;
    public static final int STATE_BUFFERING = 6;
    public static final int STATE_CONNECTING = 8;
    public static final int STATE_ERROR = 7;
    public static final int STATE_FAST_FORWARDING = 4;
    public static final int STATE_NONE = 0;
    public static final int STATE_PAUSED = 2;
    public static final int STATE_PLAYING = 3;
    public static final int STATE_REWINDING = 5;
    public static final int STATE_SKIPPING_TO_NEXT = 10;
    public static final int STATE_SKIPPING_TO_PREVIOUS = 9;
    public static final int STATE_SKIPPING_TO_QUEUE_ITEM = 11;
    public static final int STATE_STOPPED = 1;
    final long mActions;
    final long mActiveItemId;
    final long mBufferedPosition;
    List<CustomAction> mCustomActions;
    final int mErrorCode;
    final CharSequence mErrorMessage;
    final Bundle mExtras;
    final long mPosition;
    final float mSpeed;
    final int mState;
    private PlaybackState mStateFwk;
    final long mUpdateTime;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface Actions {
    }

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a */
        public final List<CustomAction> f391a;

        /* renamed from: b */
        public int f392b;

        /* renamed from: c */
        public long f393c;

        /* renamed from: d */
        public long f394d;

        /* renamed from: e */
        public float f395e;

        /* renamed from: f */
        public long f396f;

        /* renamed from: g */
        public int f397g;

        /* renamed from: h */
        public CharSequence f398h;

        /* renamed from: i */
        public long f399i;

        /* renamed from: j */
        public long f400j;

        /* renamed from: k */
        public Bundle f401k;

        public Builder() {
            this.f391a = new ArrayList();
            this.f400j = -1L;
        }

        public Builder addCustomAction(String action, String name, int icon) {
            return addCustomAction(new CustomAction(action, name, icon, null));
        }

        public PlaybackStateCompat build() {
            return new PlaybackStateCompat(this.f392b, this.f393c, this.f394d, this.f395e, this.f396f, this.f397g, this.f398h, this.f399i, this.f391a, this.f400j, this.f401k);
        }

        public Builder setActions(long capabilities) {
            this.f396f = capabilities;
            return this;
        }

        public Builder setActiveQueueItemId(long id) {
            this.f400j = id;
            return this;
        }

        public Builder setBufferedPosition(long bufferPosition) {
            this.f394d = bufferPosition;
            return this;
        }

        @Deprecated
        public Builder setErrorMessage(CharSequence errorMessage) {
            this.f398h = errorMessage;
            return this;
        }

        public Builder setExtras(Bundle extras) {
            this.f401k = extras;
            return this;
        }

        public Builder setState(int state, long position, float playbackSpeed) {
            return setState(state, position, playbackSpeed, SystemClock.elapsedRealtime());
        }

        public Builder addCustomAction(CustomAction customAction) {
            if (customAction != null) {
                this.f391a.add(customAction);
                return this;
            }
            throw new IllegalArgumentException("You may not add a null CustomAction to PlaybackStateCompat");
        }

        public Builder setErrorMessage(int errorCode, CharSequence errorMessage) {
            this.f397g = errorCode;
            this.f398h = errorMessage;
            return this;
        }

        public Builder setState(int state, long position, float playbackSpeed, long updateTime) {
            this.f392b = state;
            this.f393c = position;
            this.f399i = updateTime;
            this.f395e = playbackSpeed;
            return this;
        }

        public Builder(PlaybackStateCompat source) {
            ArrayList arrayList = new ArrayList();
            this.f391a = arrayList;
            this.f400j = -1L;
            this.f392b = source.mState;
            this.f393c = source.mPosition;
            this.f395e = source.mSpeed;
            this.f399i = source.mUpdateTime;
            this.f394d = source.mBufferedPosition;
            this.f396f = source.mActions;
            this.f397g = source.mErrorCode;
            this.f398h = source.mErrorMessage;
            List<CustomAction> list = source.mCustomActions;
            if (list != null) {
                arrayList.addAll(list);
            }
            this.f400j = source.mActiveItemId;
            this.f401k = source.mExtras;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public @interface MediaKeyAction {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface RepeatMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface ShuffleMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface State {
    }

    /* renamed from: android.support.v4.media.session.PlaybackStateCompat$a */
    /* loaded from: classes3.dex */
    public class C0071a implements Parcelable.Creator<PlaybackStateCompat> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PlaybackStateCompat createFromParcel(Parcel in) {
            return new PlaybackStateCompat(in);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public PlaybackStateCompat[] newArray(int size) {
            return new PlaybackStateCompat[size];
        }
    }

    @RequiresApi(21)
    /* renamed from: android.support.v4.media.session.PlaybackStateCompat$b */
    /* loaded from: classes3.dex */
    public static class C0072b {
        @DoNotInline
        /* renamed from: a */
        public static void m192a(PlaybackState.Builder builder, PlaybackState.CustomAction customAction) {
            builder.addCustomAction(customAction);
        }

        @DoNotInline
        /* renamed from: b */
        public static PlaybackState.CustomAction m193b(PlaybackState.CustomAction.Builder builder) {
            return builder.build();
        }

        @DoNotInline
        /* renamed from: c */
        public static PlaybackState m194c(PlaybackState.Builder builder) {
            return builder.build();
        }

        @DoNotInline
        /* renamed from: d */
        public static PlaybackState.Builder m195d() {
            return new PlaybackState.Builder();
        }

        @DoNotInline
        /* renamed from: e */
        public static PlaybackState.CustomAction.Builder m196e(String action, CharSequence name, int icon) {
            return new PlaybackState.CustomAction.Builder(action, name, icon);
        }

        @DoNotInline
        /* renamed from: f */
        public static String m197f(PlaybackState.CustomAction customAction) {
            return customAction.getAction();
        }

        @DoNotInline
        /* renamed from: g */
        public static long m198g(PlaybackState state) {
            return state.getActions();
        }

        @DoNotInline
        /* renamed from: h */
        public static long m199h(PlaybackState state) {
            return state.getActiveQueueItemId();
        }

        @DoNotInline
        /* renamed from: i */
        public static long m200i(PlaybackState state) {
            return state.getBufferedPosition();
        }

        @DoNotInline
        /* renamed from: j */
        public static List<PlaybackState.CustomAction> m201j(PlaybackState state) {
            return state.getCustomActions();
        }

        @DoNotInline
        /* renamed from: k */
        public static CharSequence m202k(PlaybackState state) {
            return state.getErrorMessage();
        }

        @DoNotInline
        /* renamed from: l */
        public static Bundle m203l(PlaybackState.CustomAction customAction) {
            return customAction.getExtras();
        }

        @DoNotInline
        /* renamed from: m */
        public static int m204m(PlaybackState.CustomAction customAction) {
            return customAction.getIcon();
        }

        @DoNotInline
        /* renamed from: n */
        public static long m205n(PlaybackState state) {
            return state.getLastPositionUpdateTime();
        }

        @DoNotInline
        /* renamed from: o */
        public static CharSequence m206o(PlaybackState.CustomAction customAction) {
            return customAction.getName();
        }

        @DoNotInline
        /* renamed from: p */
        public static float m207p(PlaybackState state) {
            return state.getPlaybackSpeed();
        }

        @DoNotInline
        /* renamed from: q */
        public static long m208q(PlaybackState state) {
            return state.getPosition();
        }

        @DoNotInline
        /* renamed from: r */
        public static int m209r(PlaybackState state) {
            return state.getState();
        }

        @DoNotInline
        /* renamed from: s */
        public static void m210s(PlaybackState.Builder builder, long actions) {
            builder.setActions(actions);
        }

        @DoNotInline
        /* renamed from: t */
        public static void m211t(PlaybackState.Builder builder, long id) {
            builder.setActiveQueueItemId(id);
        }

        @DoNotInline
        /* renamed from: u */
        public static void m212u(PlaybackState.Builder builder, long bufferedPosition) {
            builder.setBufferedPosition(bufferedPosition);
        }

        @DoNotInline
        /* renamed from: v */
        public static void m213v(PlaybackState.Builder builder, CharSequence error) {
            builder.setErrorMessage(error);
        }

        @DoNotInline
        /* renamed from: w */
        public static void m214w(PlaybackState.CustomAction.Builder builder, Bundle extras) {
            builder.setExtras(extras);
        }

        @DoNotInline
        /* renamed from: x */
        public static void m215x(PlaybackState.Builder builder, int state, long position, float playbackSpeed, long updateTime) {
            builder.setState(state, position, playbackSpeed, updateTime);
        }
    }

    @RequiresApi(22)
    /* renamed from: android.support.v4.media.session.PlaybackStateCompat$c */
    /* loaded from: classes3.dex */
    public static class C0073c {
        @DoNotInline
        /* renamed from: a */
        public static Bundle m216a(PlaybackState state) {
            return state.getExtras();
        }

        @DoNotInline
        /* renamed from: b */
        public static void m217b(PlaybackState.Builder builder, Bundle extras) {
            builder.setExtras(extras);
        }
    }

    public PlaybackStateCompat(int state, long position, long bufferedPosition, float rate, long actions, int errorCode, CharSequence errorMessage, long updateTime, List<CustomAction> customActions, long activeItemId, Bundle extras) {
        this.mState = state;
        this.mPosition = position;
        this.mBufferedPosition = bufferedPosition;
        this.mSpeed = rate;
        this.mActions = actions;
        this.mErrorCode = errorCode;
        this.mErrorMessage = errorMessage;
        this.mUpdateTime = updateTime;
        this.mCustomActions = new ArrayList(customActions);
        this.mActiveItemId = activeItemId;
        this.mExtras = extras;
    }

    public static PlaybackStateCompat fromPlaybackState(Object stateObj) {
        ArrayList arrayList = null;
        if (stateObj == null) {
            return null;
        }
        PlaybackState playbackState = (PlaybackState) stateObj;
        List<PlaybackState.CustomAction> m201j = C0072b.m201j(playbackState);
        if (m201j != null) {
            arrayList = new ArrayList(m201j.size());
            Iterator<PlaybackState.CustomAction> it2 = m201j.iterator();
            while (it2.hasNext()) {
                arrayList.add(CustomAction.fromCustomAction(it2.next()));
            }
        }
        Bundle m216a = C0073c.m216a(playbackState);
        MediaSessionCompat.ensureClassLoader(m216a);
        PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(C0072b.m209r(playbackState), C0072b.m208q(playbackState), C0072b.m200i(playbackState), C0072b.m207p(playbackState), C0072b.m198g(playbackState), 0, C0072b.m202k(playbackState), C0072b.m205n(playbackState), arrayList, C0072b.m199h(playbackState), m216a);
        playbackStateCompat.mStateFwk = playbackState;
        return playbackStateCompat;
    }

    public static int toKeyCode(long action) {
        if (action == 4) {
            return 126;
        }
        if (action == 2) {
            return 127;
        }
        if (action == 32) {
            return 87;
        }
        if (action == 16) {
            return 88;
        }
        if (action == 1) {
            return 86;
        }
        if (action == 64) {
            return 90;
        }
        if (action == 8) {
            return 89;
        }
        return action == 512 ? 85 : 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getActions() {
        return this.mActions;
    }

    public long getActiveQueueItemId() {
        return this.mActiveItemId;
    }

    public long getBufferedPosition() {
        return this.mBufferedPosition;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public long getCurrentPosition(Long timeDiff) {
        return Math.max(0L, this.mPosition + (this.mSpeed * ((float) (timeDiff != null ? timeDiff.longValue() : SystemClock.elapsedRealtime() - this.mUpdateTime))));
    }

    public List<CustomAction> getCustomActions() {
        return this.mCustomActions;
    }

    public int getErrorCode() {
        return this.mErrorCode;
    }

    public CharSequence getErrorMessage() {
        return this.mErrorMessage;
    }

    @Nullable
    public Bundle getExtras() {
        return this.mExtras;
    }

    public long getLastPositionUpdateTime() {
        return this.mUpdateTime;
    }

    public float getPlaybackSpeed() {
        return this.mSpeed;
    }

    public Object getPlaybackState() {
        if (this.mStateFwk == null) {
            PlaybackState.Builder m195d = C0072b.m195d();
            C0072b.m215x(m195d, this.mState, this.mPosition, this.mSpeed, this.mUpdateTime);
            C0072b.m212u(m195d, this.mBufferedPosition);
            C0072b.m210s(m195d, this.mActions);
            C0072b.m213v(m195d, this.mErrorMessage);
            Iterator<CustomAction> it2 = this.mCustomActions.iterator();
            while (it2.hasNext()) {
                C0072b.m192a(m195d, (PlaybackState.CustomAction) it2.next().getCustomAction());
            }
            C0072b.m211t(m195d, this.mActiveItemId);
            C0073c.m217b(m195d, this.mExtras);
            this.mStateFwk = C0072b.m194c(m195d);
        }
        return this.mStateFwk;
    }

    public long getPosition() {
        return this.mPosition;
    }

    public int getState() {
        return this.mState;
    }

    public String toString() {
        return "PlaybackState {state=" + this.mState + ", position=" + this.mPosition + ", buffered position=" + this.mBufferedPosition + ", speed=" + this.mSpeed + ", updated=" + this.mUpdateTime + ", actions=" + this.mActions + ", error code=" + this.mErrorCode + ", error message=" + this.mErrorMessage + ", custom actions=" + this.mCustomActions + ", active item id=" + this.mActiveItemId + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.mState);
        dest.writeLong(this.mPosition);
        dest.writeFloat(this.mSpeed);
        dest.writeLong(this.mUpdateTime);
        dest.writeLong(this.mBufferedPosition);
        dest.writeLong(this.mActions);
        TextUtils.writeToParcel(this.mErrorMessage, dest, flags);
        dest.writeTypedList(this.mCustomActions);
        dest.writeLong(this.mActiveItemId);
        dest.writeBundle(this.mExtras);
        dest.writeInt(this.mErrorCode);
    }

    /* loaded from: classes3.dex */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new C0070a();
        private final String mAction;
        private PlaybackState.CustomAction mCustomActionFwk;
        private final Bundle mExtras;
        private final int mIcon;
        private final CharSequence mName;

        /* loaded from: classes3.dex */
        public static final class Builder {

            /* renamed from: a */
            public final String f402a;

            /* renamed from: b */
            public final CharSequence f403b;

            /* renamed from: c */
            public final int f404c;

            /* renamed from: d */
            public Bundle f405d;

            public Builder(String action, CharSequence name, int icon) {
                if (TextUtils.isEmpty(action)) {
                    throw new IllegalArgumentException("You must specify an action to build a CustomAction");
                }
                if (TextUtils.isEmpty(name)) {
                    throw new IllegalArgumentException("You must specify a name to build a CustomAction");
                }
                if (icon == 0) {
                    throw new IllegalArgumentException("You must specify an icon resource id to build a CustomAction");
                }
                this.f402a = action;
                this.f403b = name;
                this.f404c = icon;
            }

            public CustomAction build() {
                return new CustomAction(this.f402a, this.f403b, this.f404c, this.f405d);
            }

            public Builder setExtras(Bundle extras) {
                this.f405d = extras;
                return this;
            }
        }

        /* renamed from: android.support.v4.media.session.PlaybackStateCompat$CustomAction$a */
        /* loaded from: classes3.dex */
        public class C0070a implements Parcelable.Creator<CustomAction> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public CustomAction createFromParcel(Parcel p) {
                return new CustomAction(p);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public CustomAction[] newArray(int size) {
                return new CustomAction[size];
            }
        }

        public CustomAction(String action, CharSequence name, int icon, Bundle extras) {
            this.mAction = action;
            this.mName = name;
            this.mIcon = icon;
            this.mExtras = extras;
        }

        public static CustomAction fromCustomAction(Object customActionObj) {
            if (customActionObj == null) {
                return null;
            }
            PlaybackState.CustomAction customAction = (PlaybackState.CustomAction) customActionObj;
            Bundle m203l = C0072b.m203l(customAction);
            MediaSessionCompat.ensureClassLoader(m203l);
            CustomAction customAction2 = new CustomAction(C0072b.m197f(customAction), C0072b.m206o(customAction), C0072b.m204m(customAction), m203l);
            customAction2.mCustomActionFwk = customAction;
            return customAction2;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getAction() {
            return this.mAction;
        }

        public Object getCustomAction() {
            PlaybackState.CustomAction customAction = this.mCustomActionFwk;
            if (customAction != null) {
                return customAction;
            }
            PlaybackState.CustomAction.Builder m196e = C0072b.m196e(this.mAction, this.mName, this.mIcon);
            C0072b.m214w(m196e, this.mExtras);
            return C0072b.m193b(m196e);
        }

        public Bundle getExtras() {
            return this.mExtras;
        }

        public int getIcon() {
            return this.mIcon;
        }

        public CharSequence getName() {
            return this.mName;
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.mName) + ", mIcon=" + this.mIcon + ", mExtras=" + this.mExtras;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeString(this.mAction);
            TextUtils.writeToParcel(this.mName, dest, flags);
            dest.writeInt(this.mIcon);
            dest.writeBundle(this.mExtras);
        }

        public CustomAction(Parcel in) {
            this.mAction = in.readString();
            this.mName = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(in);
            this.mIcon = in.readInt();
            this.mExtras = in.readBundle(MediaSessionCompat.class.getClassLoader());
        }
    }

    public PlaybackStateCompat(Parcel in) {
        this.mState = in.readInt();
        this.mPosition = in.readLong();
        this.mSpeed = in.readFloat();
        this.mUpdateTime = in.readLong();
        this.mBufferedPosition = in.readLong();
        this.mActions = in.readLong();
        this.mErrorMessage = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(in);
        this.mCustomActions = in.createTypedArrayList(CustomAction.CREATOR);
        this.mActiveItemId = in.readLong();
        this.mExtras = in.readBundle(MediaSessionCompat.class.getClassLoader());
        this.mErrorCode = in.readInt();
    }
}
