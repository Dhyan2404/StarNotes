package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.content.LocusId;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.widget.RemoteViews;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.C0512R;
import androidx.core.app.Person;
import androidx.core.content.ContextCompat;
import androidx.core.content.LocusIdCompat;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.text.BidiFormatter;
import com.bumptech.glide.load.engine.GlideException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes3.dex */
public class NotificationCompat {
    public static final int BADGE_ICON_LARGE = 2;
    public static final int BADGE_ICON_NONE = 0;
    public static final int BADGE_ICON_SMALL = 1;
    public static final String CATEGORY_ALARM = "alarm";
    public static final String CATEGORY_CALL = "call";
    public static final String CATEGORY_EMAIL = "email";
    public static final String CATEGORY_ERROR = "err";
    public static final String CATEGORY_EVENT = "event";
    public static final String CATEGORY_LOCATION_SHARING = "location_sharing";
    public static final String CATEGORY_MESSAGE = "msg";
    public static final String CATEGORY_MISSED_CALL = "missed_call";
    public static final String CATEGORY_NAVIGATION = "navigation";
    public static final String CATEGORY_PROGRESS = "progress";
    public static final String CATEGORY_PROMO = "promo";
    public static final String CATEGORY_RECOMMENDATION = "recommendation";
    public static final String CATEGORY_REMINDER = "reminder";
    public static final String CATEGORY_SERVICE = "service";
    public static final String CATEGORY_SOCIAL = "social";
    public static final String CATEGORY_STATUS = "status";
    public static final String CATEGORY_STOPWATCH = "stopwatch";
    public static final String CATEGORY_SYSTEM = "sys";
    public static final String CATEGORY_TRANSPORT = "transport";
    public static final String CATEGORY_WORKOUT = "workout";

    @ColorInt
    public static final int COLOR_DEFAULT = 0;
    public static final int DEFAULT_ALL = -1;
    public static final int DEFAULT_LIGHTS = 4;
    public static final int DEFAULT_SOUND = 1;
    public static final int DEFAULT_VIBRATE = 2;

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_ANSWER_COLOR = "android.answerColor";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_ANSWER_INTENT = "android.answerIntent";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_AUDIO_CONTENTS_URI = "android.audioContents";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_BACKGROUND_IMAGE_URI = "android.backgroundImageUri";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_BIG_TEXT = "android.bigText";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CALL_IS_VIDEO = "android.callIsVideo";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CALL_PERSON = "android.callPerson";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CALL_PERSON_COMPAT = "android.callPersonCompat";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CALL_TYPE = "android.callType";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CHANNEL_GROUP_ID = "android.intent.extra.CHANNEL_GROUP_ID";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CHANNEL_ID = "android.intent.extra.CHANNEL_ID";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CHRONOMETER_COUNT_DOWN = "android.chronometerCountDown";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_COLORIZED = "android.colorized";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_COMPACT_ACTIONS = "android.compactActions";
    public static final String EXTRA_COMPAT_TEMPLATE = "androidx.core.app.extra.COMPAT_TEMPLATE";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_CONVERSATION_TITLE = "android.conversationTitle";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_DECLINE_COLOR = "android.declineColor";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_DECLINE_INTENT = "android.declineIntent";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_HANG_UP_INTENT = "android.hangUpIntent";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_HIDDEN_CONVERSATION_TITLE = "android.hiddenConversationTitle";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_HISTORIC_MESSAGES = "android.messages.historic";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_INFO_TEXT = "android.infoText";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_IS_GROUP_CONVERSATION = "android.isGroupConversation";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_LARGE_ICON = "android.largeIcon";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_LARGE_ICON_BIG = "android.largeIcon.big";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_MEDIA_SESSION = "android.mediaSession";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_MESSAGES = "android.messages";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_MESSAGING_STYLE_USER = "android.messagingStyleUser";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_NOTIFICATION_ID = "android.intent.extra.NOTIFICATION_ID";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_NOTIFICATION_TAG = "android.intent.extra.NOTIFICATION_TAG";

    @SuppressLint({"ActionValue"})
    @Deprecated
    public static final String EXTRA_PEOPLE = "android.people";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PEOPLE_LIST = "android.people.list";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PICTURE = "android.picture";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PICTURE_CONTENT_DESCRIPTION = "android.pictureContentDescription";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PICTURE_ICON = "android.pictureIcon";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PROGRESS = "android.progress";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PROGRESS_INDETERMINATE = "android.progressIndeterminate";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_PROGRESS_MAX = "android.progressMax";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_REMOTE_INPUT_HISTORY = "android.remoteInputHistory";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SELF_DISPLAY_NAME = "android.selfDisplayName";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED = "android.showBigPictureWhenCollapsed";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SHOW_CHRONOMETER = "android.showChronometer";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SHOW_WHEN = "android.showWhen";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SMALL_ICON = "android.icon";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SUB_TEXT = "android.subText";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SUMMARY_TEXT = "android.summaryText";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TEMPLATE = "android.template";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TEXT = "android.text";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TEXT_LINES = "android.textLines";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TITLE = "android.title";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_TITLE_BIG = "android.title.big";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_VERIFICATION_ICON = "android.verificationIcon";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_VERIFICATION_ICON_COMPAT = "android.verificationIconCompat";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_VERIFICATION_TEXT = "android.verificationText";
    public static final int FLAG_AUTO_CANCEL = 16;
    public static final int FLAG_BUBBLE = 4096;
    public static final int FLAG_FOREGROUND_SERVICE = 64;
    public static final int FLAG_GROUP_SUMMARY = 512;

    @Deprecated
    public static final int FLAG_HIGH_PRIORITY = 128;
    public static final int FLAG_INSISTENT = 4;
    public static final int FLAG_LOCAL_ONLY = 256;
    public static final int FLAG_NO_CLEAR = 32;
    public static final int FLAG_ONGOING_EVENT = 2;
    public static final int FLAG_ONLY_ALERT_ONCE = 8;
    public static final int FLAG_SHOW_LIGHTS = 1;
    public static final int FOREGROUND_SERVICE_DEFAULT = 0;
    public static final int FOREGROUND_SERVICE_DEFERRED = 2;
    public static final int FOREGROUND_SERVICE_IMMEDIATE = 1;
    public static final int GROUP_ALERT_ALL = 0;
    public static final int GROUP_ALERT_CHILDREN = 2;
    public static final int GROUP_ALERT_SUMMARY = 1;
    public static final String GROUP_KEY_SILENT = "silent";

    @SuppressLint({"ActionValue"})
    public static final String INTENT_CATEGORY_NOTIFICATION_PREFERENCES = "android.intent.category.NOTIFICATION_PREFERENCES";

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int MAX_ACTION_BUTTONS = 3;
    public static final int PRIORITY_DEFAULT = 0;
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_LOW = -1;
    public static final int PRIORITY_MAX = 2;
    public static final int PRIORITY_MIN = -2;
    public static final int STREAM_DEFAULT = -1;
    public static final int VISIBILITY_PRIVATE = 0;
    public static final int VISIBILITY_PUBLIC = 1;
    public static final int VISIBILITY_SECRET = -1;

    /* renamed from: a */
    public static final String f4850a = "NotifCompat";

    /* loaded from: classes3.dex */
    public static class Action {
        public static final int SEMANTIC_ACTION_ARCHIVE = 5;
        public static final int SEMANTIC_ACTION_CALL = 10;
        public static final int SEMANTIC_ACTION_DELETE = 4;
        public static final int SEMANTIC_ACTION_MARK_AS_READ = 2;
        public static final int SEMANTIC_ACTION_MARK_AS_UNREAD = 3;
        public static final int SEMANTIC_ACTION_MUTE = 6;
        public static final int SEMANTIC_ACTION_NONE = 0;
        public static final int SEMANTIC_ACTION_REPLY = 1;
        public static final int SEMANTIC_ACTION_THUMBS_DOWN = 9;
        public static final int SEMANTIC_ACTION_THUMBS_UP = 8;
        public static final int SEMANTIC_ACTION_UNMUTE = 7;

        /* renamed from: j */
        public static final String f4851j = "android.support.action.showsUserInterface";

        /* renamed from: k */
        public static final String f4852k = "android.support.action.semanticAction";

        /* renamed from: a */
        public final Bundle f4853a;

        @Nullable
        public PendingIntent actionIntent;

        /* renamed from: b */
        @Nullable
        public IconCompat f4854b;

        /* renamed from: c */
        public final RemoteInput[] f4855c;

        /* renamed from: d */
        public final RemoteInput[] f4856d;

        /* renamed from: e */
        public boolean f4857e;

        /* renamed from: f */
        public boolean f4858f;

        /* renamed from: g */
        public final int f4859g;

        /* renamed from: h */
        public final boolean f4860h;

        /* renamed from: i */
        public boolean f4861i;

        @Deprecated
        public int icon;
        public CharSequence title;

        /* loaded from: classes3.dex */
        public static final class Builder {

            /* renamed from: a */
            public final IconCompat f4862a;

            /* renamed from: b */
            public final CharSequence f4863b;

            /* renamed from: c */
            public final PendingIntent f4864c;

            /* renamed from: d */
            public boolean f4865d;

            /* renamed from: e */
            public final Bundle f4866e;

            /* renamed from: f */
            public ArrayList<RemoteInput> f4867f;

            /* renamed from: g */
            public int f4868g;

            /* renamed from: h */
            public boolean f4869h;

            /* renamed from: i */
            public boolean f4870i;

            /* renamed from: j */
            public boolean f4871j;

            @RequiresApi(20)
            /* renamed from: androidx.core.app.NotificationCompat$Action$Builder$a */
            /* loaded from: classes3.dex */
            public static class C0552a {
                private C0552a() {
                }

                @DoNotInline
                /* renamed from: a */
                public static Bundle m2418a(Notification.Action action) {
                    return action.getExtras();
                }

                @DoNotInline
                /* renamed from: b */
                public static android.app.RemoteInput[] m2419b(Notification.Action action) {
                    return action.getRemoteInputs();
                }
            }

            @RequiresApi(23)
            /* renamed from: androidx.core.app.NotificationCompat$Action$Builder$b */
            /* loaded from: classes3.dex */
            public static class C0553b {
                private C0553b() {
                }

                @DoNotInline
                /* renamed from: a */
                public static Icon m2420a(Notification.Action action) {
                    return action.getIcon();
                }
            }

            @RequiresApi(24)
            /* renamed from: androidx.core.app.NotificationCompat$Action$Builder$c */
            /* loaded from: classes3.dex */
            public static class C0554c {
                private C0554c() {
                }

                @DoNotInline
                /* renamed from: a */
                public static boolean m2421a(Notification.Action action) {
                    return action.getAllowGeneratedReplies();
                }
            }

            @RequiresApi(28)
            /* renamed from: androidx.core.app.NotificationCompat$Action$Builder$d */
            /* loaded from: classes3.dex */
            public static class C0555d {
                private C0555d() {
                }

                @DoNotInline
                /* renamed from: a */
                public static int m2422a(Notification.Action action) {
                    return action.getSemanticAction();
                }
            }

            @RequiresApi(29)
            /* renamed from: androidx.core.app.NotificationCompat$Action$Builder$e */
            /* loaded from: classes3.dex */
            public static class C0556e {
                private C0556e() {
                }

                @DoNotInline
                /* renamed from: a */
                public static boolean m2423a(Notification.Action action) {
                    return action.isContextual();
                }
            }

            @RequiresApi(31)
            /* renamed from: androidx.core.app.NotificationCompat$Action$Builder$f */
            /* loaded from: classes3.dex */
            public static class C0557f {
                private C0557f() {
                }

                @DoNotInline
                /* renamed from: a */
                public static boolean m2424a(Notification.Action action) {
                    return action.isAuthenticationRequired();
                }
            }

            public Builder(@Nullable IconCompat iconCompat, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
                this(iconCompat, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false, false);
            }

            @NonNull
            @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
            public static Builder fromAndroidAction(@NonNull Notification.Action action) {
                Builder builder = C0553b.m2420a(action) != null ? new Builder(IconCompat.createFromIconOrNullIfZeroResId(C0553b.m2420a(action)), action.title, action.actionIntent) : new Builder(action.icon, action.title, action.actionIntent);
                android.app.RemoteInput[] m2419b = C0552a.m2419b(action);
                if (m2419b != null && m2419b.length != 0) {
                    for (android.app.RemoteInput remoteInput : m2419b) {
                        builder.addRemoteInput(RemoteInput.m2615c(remoteInput));
                    }
                }
                int i = Build.VERSION.SDK_INT;
                builder.f4865d = C0554c.m2421a(action);
                builder.setSemanticAction(C0555d.m2422a(action));
                builder.setContextual(C0556e.m2423a(action));
                if (i >= 31) {
                    builder.setAuthenticationRequired(C0557f.m2424a(action));
                }
                builder.addExtras(C0552a.m2418a(action));
                return builder;
            }

            /* renamed from: a */
            public final void m2417a() {
                if (this.f4870i && this.f4864c == null) {
                    throw new NullPointerException("Contextual Actions must contain a valid PendingIntent");
                }
            }

            @NonNull
            public Builder addExtras(@Nullable Bundle bundle) {
                if (bundle != null) {
                    this.f4866e.putAll(bundle);
                }
                return this;
            }

            @NonNull
            public Builder addRemoteInput(@Nullable RemoteInput remoteInput) {
                if (this.f4867f == null) {
                    this.f4867f = new ArrayList<>();
                }
                if (remoteInput != null) {
                    this.f4867f.add(remoteInput);
                }
                return this;
            }

            @NonNull
            public Action build() {
                m2417a();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList<RemoteInput> arrayList3 = this.f4867f;
                if (arrayList3 != null) {
                    Iterator<RemoteInput> it2 = arrayList3.iterator();
                    while (it2.hasNext()) {
                        RemoteInput next = it2.next();
                        if (next.isDataOnly()) {
                            arrayList.add(next);
                        } else {
                            arrayList2.add(next);
                        }
                    }
                }
                RemoteInput[] remoteInputArr = arrayList.isEmpty() ? null : (RemoteInput[]) arrayList.toArray(new RemoteInput[arrayList.size()]);
                return new Action(this.f4862a, this.f4863b, this.f4864c, this.f4866e, arrayList2.isEmpty() ? null : (RemoteInput[]) arrayList2.toArray(new RemoteInput[arrayList2.size()]), remoteInputArr, this.f4865d, this.f4868g, this.f4869h, this.f4870i, this.f4871j);
            }

            @NonNull
            public Builder extend(@NonNull Extender extender) {
                extender.extend(this);
                return this;
            }

            @NonNull
            public Bundle getExtras() {
                return this.f4866e;
            }

            @NonNull
            public Builder setAllowGeneratedReplies(boolean z) {
                this.f4865d = z;
                return this;
            }

            @NonNull
            public Builder setAuthenticationRequired(boolean z) {
                this.f4871j = z;
                return this;
            }

            @NonNull
            public Builder setContextual(boolean z) {
                this.f4870i = z;
                return this;
            }

            @NonNull
            public Builder setSemanticAction(int i) {
                this.f4868g = i;
                return this;
            }

            @NonNull
            public Builder setShowsUserInterface(boolean z) {
                this.f4869h = z;
                return this;
            }

            public Builder(int i, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
                this(i != 0 ? IconCompat.createWithResource(null, "", i) : null, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false, false);
            }

            public Builder(@NonNull Action action) {
                this(action.getIconCompat(), action.title, action.actionIntent, new Bundle(action.f4853a), action.getRemoteInputs(), action.getAllowGeneratedReplies(), action.getSemanticAction(), action.f4858f, action.isContextual(), action.isAuthenticationRequired());
            }

            public Builder(@Nullable IconCompat iconCompat, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent, @NonNull Bundle bundle, @Nullable RemoteInput[] remoteInputArr, boolean z, int i, boolean z2, boolean z3, boolean z4) {
                this.f4865d = true;
                this.f4869h = true;
                this.f4862a = iconCompat;
                this.f4863b = Builder.limitCharSequenceLength(charSequence);
                this.f4864c = pendingIntent;
                this.f4866e = bundle;
                this.f4867f = remoteInputArr == null ? null : new ArrayList<>(Arrays.asList(remoteInputArr));
                this.f4865d = z;
                this.f4868g = i;
                this.f4869h = z2;
                this.f4870i = z3;
                this.f4871j = z4;
            }
        }

        /* loaded from: classes3.dex */
        public interface Extender {
            @NonNull
            Builder extend(@NonNull Builder builder);
        }

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes3.dex */
        public @interface SemanticAction {
        }

        /* loaded from: classes3.dex */
        public static final class WearableExtender implements Extender {

            /* renamed from: e */
            public static final String f4872e = "android.wearable.EXTENSIONS";

            /* renamed from: f */
            public static final String f4873f = "flags";

            /* renamed from: g */
            public static final String f4874g = "inProgressLabel";

            /* renamed from: h */
            public static final String f4875h = "confirmLabel";

            /* renamed from: i */
            public static final String f4876i = "cancelLabel";

            /* renamed from: j */
            public static final int f4877j = 1;

            /* renamed from: k */
            public static final int f4878k = 2;

            /* renamed from: l */
            public static final int f4879l = 4;

            /* renamed from: m */
            public static final int f4880m = 1;

            /* renamed from: a */
            public int f4881a;

            /* renamed from: b */
            public CharSequence f4882b;

            /* renamed from: c */
            public CharSequence f4883c;

            /* renamed from: d */
            public CharSequence f4884d;

            public WearableExtender() {
                this.f4881a = 1;
            }

            /* renamed from: a */
            public final void m2425a(int i, boolean z) {
                if (z) {
                    this.f4881a = i | this.f4881a;
                } else {
                    this.f4881a = (~i) & this.f4881a;
                }
            }

            @Override // androidx.core.app.NotificationCompat.Action.Extender
            @NonNull
            public Builder extend(@NonNull Builder builder) {
                Bundle bundle = new Bundle();
                int i = this.f4881a;
                if (i != 1) {
                    bundle.putInt("flags", i);
                }
                CharSequence charSequence = this.f4882b;
                if (charSequence != null) {
                    bundle.putCharSequence(f4874g, charSequence);
                }
                CharSequence charSequence2 = this.f4883c;
                if (charSequence2 != null) {
                    bundle.putCharSequence(f4875h, charSequence2);
                }
                CharSequence charSequence3 = this.f4884d;
                if (charSequence3 != null) {
                    bundle.putCharSequence(f4876i, charSequence3);
                }
                builder.getExtras().putBundle("android.wearable.EXTENSIONS", bundle);
                return builder;
            }

            @Nullable
            @Deprecated
            public CharSequence getCancelLabel() {
                return this.f4884d;
            }

            @Nullable
            @Deprecated
            public CharSequence getConfirmLabel() {
                return this.f4883c;
            }

            public boolean getHintDisplayActionInline() {
                return (this.f4881a & 4) != 0;
            }

            public boolean getHintLaunchesActivity() {
                return (this.f4881a & 2) != 0;
            }

            @Nullable
            @Deprecated
            public CharSequence getInProgressLabel() {
                return this.f4882b;
            }

            public boolean isAvailableOffline() {
                return (this.f4881a & 1) != 0;
            }

            @NonNull
            public WearableExtender setAvailableOffline(boolean z) {
                m2425a(1, z);
                return this;
            }

            @NonNull
            @Deprecated
            public WearableExtender setCancelLabel(@Nullable CharSequence charSequence) {
                this.f4884d = charSequence;
                return this;
            }

            @NonNull
            @Deprecated
            public WearableExtender setConfirmLabel(@Nullable CharSequence charSequence) {
                this.f4883c = charSequence;
                return this;
            }

            @NonNull
            public WearableExtender setHintDisplayActionInline(boolean z) {
                m2425a(4, z);
                return this;
            }

            @NonNull
            public WearableExtender setHintLaunchesActivity(boolean z) {
                m2425a(2, z);
                return this;
            }

            @NonNull
            @Deprecated
            public WearableExtender setInProgressLabel(@Nullable CharSequence charSequence) {
                this.f4882b = charSequence;
                return this;
            }

            @NonNull
            /* renamed from: clone, reason: merged with bridge method [inline-methods] */
            public WearableExtender m72120clone() {
                WearableExtender wearableExtender = new WearableExtender();
                wearableExtender.f4881a = this.f4881a;
                wearableExtender.f4882b = this.f4882b;
                wearableExtender.f4883c = this.f4883c;
                wearableExtender.f4884d = this.f4884d;
                return wearableExtender;
            }

            public WearableExtender(@NonNull Action action) {
                this.f4881a = 1;
                Bundle bundle = action.getExtras().getBundle("android.wearable.EXTENSIONS");
                if (bundle != null) {
                    this.f4881a = bundle.getInt("flags", 1);
                    this.f4882b = bundle.getCharSequence(f4874g);
                    this.f4883c = bundle.getCharSequence(f4875h);
                    this.f4884d = bundle.getCharSequence(f4876i);
                }
            }
        }

        public Action(int i, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
            this(i != 0 ? IconCompat.createWithResource(null, "", i) : null, charSequence, pendingIntent);
        }

        @Nullable
        public PendingIntent getActionIntent() {
            return this.actionIntent;
        }

        public boolean getAllowGeneratedReplies() {
            return this.f4857e;
        }

        @Nullable
        public RemoteInput[] getDataOnlyRemoteInputs() {
            return this.f4856d;
        }

        @NonNull
        public Bundle getExtras() {
            return this.f4853a;
        }

        @Deprecated
        public int getIcon() {
            return this.icon;
        }

        @Nullable
        public IconCompat getIconCompat() {
            int i;
            if (this.f4854b == null && (i = this.icon) != 0) {
                this.f4854b = IconCompat.createWithResource(null, "", i);
            }
            return this.f4854b;
        }

        @Nullable
        public RemoteInput[] getRemoteInputs() {
            return this.f4855c;
        }

        public int getSemanticAction() {
            return this.f4859g;
        }

        public boolean getShowsUserInterface() {
            return this.f4858f;
        }

        @Nullable
        public CharSequence getTitle() {
            return this.title;
        }

        public boolean isAuthenticationRequired() {
            return this.f4861i;
        }

        public boolean isContextual() {
            return this.f4860h;
        }

        public Action(@Nullable IconCompat iconCompat, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle(), (RemoteInput[]) null, (RemoteInput[]) null, true, 0, true, false, false);
        }

        public Action(int i, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent, @Nullable Bundle bundle, @Nullable RemoteInput[] remoteInputArr, @Nullable RemoteInput[] remoteInputArr2, boolean z, int i2, boolean z2, boolean z3, boolean z4) {
            this(i != 0 ? IconCompat.createWithResource(null, "", i) : null, charSequence, pendingIntent, bundle, remoteInputArr, remoteInputArr2, z, i2, z2, z3, z4);
        }

        public Action(@Nullable IconCompat iconCompat, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent, @Nullable Bundle bundle, @Nullable RemoteInput[] remoteInputArr, @Nullable RemoteInput[] remoteInputArr2, boolean z, int i, boolean z2, boolean z3, boolean z4) {
            this.f4858f = true;
            this.f4854b = iconCompat;
            if (iconCompat != null && iconCompat.getType() == 2) {
                this.icon = iconCompat.getResId();
            }
            this.title = Builder.limitCharSequenceLength(charSequence);
            this.actionIntent = pendingIntent;
            this.f4853a = bundle == null ? new Bundle() : bundle;
            this.f4855c = remoteInputArr;
            this.f4856d = remoteInputArr2;
            this.f4857e = z;
            this.f4859g = i;
            this.f4858f = z2;
            this.f4860h = z3;
            this.f4861i = z4;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface BadgeIconType {
    }

    /* loaded from: classes3.dex */
    public static class BigPictureStyle extends Style {

        /* renamed from: i */
        public static final String f4885i = "androidx.core.app.NotificationCompat$BigPictureStyle";

        /* renamed from: d */
        public IconCompat f4886d;

        /* renamed from: e */
        public IconCompat f4887e;

        /* renamed from: f */
        public boolean f4888f;

        /* renamed from: g */
        public CharSequence f4889g;

        /* renamed from: h */
        public boolean f4890h;

        @RequiresApi(23)
        /* renamed from: androidx.core.app.NotificationCompat$BigPictureStyle$a */
        /* loaded from: classes3.dex */
        public static class C0558a {
            private C0558a() {
            }

            @RequiresApi(23)
            /* renamed from: a */
            public static void m2427a(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
                bigPictureStyle.bigLargeIcon(icon);
            }
        }

        @RequiresApi(31)
        /* renamed from: androidx.core.app.NotificationCompat$BigPictureStyle$b */
        /* loaded from: classes3.dex */
        public static class C0559b {
            private C0559b() {
            }

            @RequiresApi(31)
            /* renamed from: a */
            public static void m2428a(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
                bigPictureStyle.bigPicture(icon);
            }

            @RequiresApi(31)
            /* renamed from: b */
            public static void m2429b(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
                bigPictureStyle.setContentDescription(charSequence);
            }

            @RequiresApi(31)
            /* renamed from: c */
            public static void m2430c(Notification.BigPictureStyle bigPictureStyle, boolean z) {
                bigPictureStyle.showBigPictureWhenCollapsed(z);
            }
        }

        public BigPictureStyle() {
        }

        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public static IconCompat getPictureIcon(@Nullable Bundle bundle) {
            if (bundle == null) {
                return null;
            }
            Parcelable parcelable = bundle.getParcelable(NotificationCompat.EXTRA_PICTURE);
            return parcelable != null ? m2426l(parcelable) : m2426l(bundle.getParcelable(NotificationCompat.EXTRA_PICTURE_ICON));
        }

        @Nullable
        /* renamed from: l */
        public static IconCompat m2426l(@Nullable Parcelable parcelable) {
            if (parcelable == null) {
                return null;
            }
            if (parcelable instanceof Icon) {
                return IconCompat.createFromIcon((Icon) parcelable);
            }
            if (parcelable instanceof Bitmap) {
                return IconCompat.createWithBitmap((Bitmap) parcelable);
            }
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            Notification.BigPictureStyle bigContentTitle = new Notification.BigPictureStyle(notificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(this.f5020a);
            IconCompat iconCompat = this.f4886d;
            if (iconCompat != null) {
                if (Build.VERSION.SDK_INT >= 31) {
                    C0559b.m2428a(bigContentTitle, this.f4886d.toIcon(notificationBuilderWithBuilderAccessor instanceof C0618a ? ((C0618a) notificationBuilderWithBuilderAccessor).m2645e() : null));
                } else if (iconCompat.getType() == 1) {
                    bigContentTitle = bigContentTitle.bigPicture(this.f4886d.getBitmap());
                }
            }
            if (this.f4888f) {
                if (this.f4887e == null) {
                    bigContentTitle.bigLargeIcon((Bitmap) null);
                } else {
                    C0558a.m2427a(bigContentTitle, this.f4887e.toIcon(notificationBuilderWithBuilderAccessor instanceof C0618a ? ((C0618a) notificationBuilderWithBuilderAccessor).m2645e() : null));
                }
            }
            if (this.f5022c) {
                bigContentTitle.setSummaryText(this.f5021b);
            }
            if (Build.VERSION.SDK_INT >= 31) {
                C0559b.m2430c(bigContentTitle, this.f4890h);
                C0559b.m2429b(bigContentTitle, this.f4889g);
            }
        }

        @NonNull
        public BigPictureStyle bigLargeIcon(@Nullable Bitmap bitmap) {
            this.f4887e = bitmap == null ? null : IconCompat.createWithBitmap(bitmap);
            this.f4888f = true;
            return this;
        }

        @NonNull
        public BigPictureStyle bigPicture(@Nullable Bitmap bitmap) {
            this.f4886d = bitmap == null ? null : IconCompat.createWithBitmap(bitmap);
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void clearCompatExtraKeys(@NonNull Bundle bundle) {
            super.clearCompatExtraKeys(bundle);
            bundle.remove(NotificationCompat.EXTRA_LARGE_ICON_BIG);
            bundle.remove(NotificationCompat.EXTRA_PICTURE);
            bundle.remove(NotificationCompat.EXTRA_PICTURE_ICON);
            bundle.remove(NotificationCompat.EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public String getClassName() {
            return f4885i;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void restoreFromCompatExtras(@NonNull Bundle bundle) {
            super.restoreFromCompatExtras(bundle);
            if (bundle.containsKey(NotificationCompat.EXTRA_LARGE_ICON_BIG)) {
                this.f4887e = m2426l(bundle.getParcelable(NotificationCompat.EXTRA_LARGE_ICON_BIG));
                this.f4888f = true;
            }
            this.f4886d = getPictureIcon(bundle);
            this.f4890h = bundle.getBoolean(NotificationCompat.EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED);
        }

        @NonNull
        public BigPictureStyle setBigContentTitle(@Nullable CharSequence charSequence) {
            this.f5020a = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        @NonNull
        @RequiresApi(31)
        public BigPictureStyle setContentDescription(@Nullable CharSequence charSequence) {
            this.f4889g = charSequence;
            return this;
        }

        @NonNull
        public BigPictureStyle setSummaryText(@Nullable CharSequence charSequence) {
            this.f5021b = Builder.limitCharSequenceLength(charSequence);
            this.f5022c = true;
            return this;
        }

        @NonNull
        @RequiresApi(31)
        public BigPictureStyle showBigPictureWhenCollapsed(boolean z) {
            this.f4890h = z;
            return this;
        }

        public BigPictureStyle(@Nullable Builder builder) {
            setBuilder(builder);
        }

        @NonNull
        @RequiresApi(31)
        public BigPictureStyle bigPicture(@Nullable Icon icon) {
            this.f4886d = IconCompat.createFromIcon(icon);
            return this;
        }

        @NonNull
        @RequiresApi(23)
        public BigPictureStyle bigLargeIcon(@Nullable Icon icon) {
            this.f4887e = icon == null ? null : IconCompat.createFromIcon(icon);
            this.f4888f = true;
            return this;
        }
    }

    /* loaded from: classes3.dex */
    public static class BigTextStyle extends Style {

        /* renamed from: e */
        public static final String f4891e = "androidx.core.app.NotificationCompat$BigTextStyle";

        /* renamed from: d */
        public CharSequence f4892d;

        public BigTextStyle() {
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void addCompatExtras(@NonNull Bundle bundle) {
            super.addCompatExtras(bundle);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            Notification.BigTextStyle bigText = new Notification.BigTextStyle(notificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(this.f5020a).bigText(this.f4892d);
            if (this.f5022c) {
                bigText.setSummaryText(this.f5021b);
            }
        }

        @NonNull
        public BigTextStyle bigText(@Nullable CharSequence charSequence) {
            this.f4892d = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void clearCompatExtraKeys(@NonNull Bundle bundle) {
            super.clearCompatExtraKeys(bundle);
            bundle.remove(NotificationCompat.EXTRA_BIG_TEXT);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public String getClassName() {
            return f4891e;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void restoreFromCompatExtras(@NonNull Bundle bundle) {
            super.restoreFromCompatExtras(bundle);
            this.f4892d = bundle.getCharSequence(NotificationCompat.EXTRA_BIG_TEXT);
        }

        @NonNull
        public BigTextStyle setBigContentTitle(@Nullable CharSequence charSequence) {
            this.f5020a = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        @NonNull
        public BigTextStyle setSummaryText(@Nullable CharSequence charSequence) {
            this.f5021b = Builder.limitCharSequenceLength(charSequence);
            this.f5022c = true;
            return this;
        }

        public BigTextStyle(@Nullable Builder builder) {
            setBuilder(builder);
        }
    }

    /* loaded from: classes3.dex */
    public static final class BubbleMetadata {

        /* renamed from: h */
        public static final int f4893h = 1;

        /* renamed from: i */
        public static final int f4894i = 2;

        /* renamed from: a */
        public PendingIntent f4895a;

        /* renamed from: b */
        public PendingIntent f4896b;

        /* renamed from: c */
        public IconCompat f4897c;

        /* renamed from: d */
        public int f4898d;

        /* renamed from: e */
        @DimenRes
        public int f4899e;

        /* renamed from: f */
        public int f4900f;

        /* renamed from: g */
        public String f4901g;

        /* loaded from: classes3.dex */
        public static final class Builder {

            /* renamed from: a */
            public PendingIntent f4902a;

            /* renamed from: b */
            public IconCompat f4903b;

            /* renamed from: c */
            public int f4904c;

            /* renamed from: d */
            @DimenRes
            public int f4905d;

            /* renamed from: e */
            public int f4906e;

            /* renamed from: f */
            public PendingIntent f4907f;

            /* renamed from: g */
            public String f4908g;

            @Deprecated
            public Builder() {
            }

            @NonNull
            /* renamed from: a */
            public final Builder m2431a(int i, boolean z) {
                if (z) {
                    this.f4906e = i | this.f4906e;
                } else {
                    this.f4906e = (~i) & this.f4906e;
                }
                return this;
            }

            @NonNull
            public BubbleMetadata build() {
                String str = this.f4908g;
                if (str == null && this.f4902a == null) {
                    throw new NullPointerException("Must supply pending intent or shortcut to bubble");
                }
                if (str == null && this.f4903b == null) {
                    throw new NullPointerException("Must supply an icon or shortcut for the bubble");
                }
                BubbleMetadata bubbleMetadata = new BubbleMetadata(this.f4902a, this.f4907f, this.f4903b, this.f4904c, this.f4905d, this.f4906e, str);
                bubbleMetadata.setFlags(this.f4906e);
                return bubbleMetadata;
            }

            @NonNull
            public Builder setAutoExpandBubble(boolean z) {
                m2431a(1, z);
                return this;
            }

            @NonNull
            public Builder setDeleteIntent(@Nullable PendingIntent pendingIntent) {
                this.f4907f = pendingIntent;
                return this;
            }

            @NonNull
            public Builder setDesiredHeight(@Dimension(unit = 0) int i) {
                this.f4904c = Math.max(i, 0);
                this.f4905d = 0;
                return this;
            }

            @NonNull
            public Builder setDesiredHeightResId(@DimenRes int i) {
                this.f4905d = i;
                this.f4904c = 0;
                return this;
            }

            @NonNull
            public Builder setIcon(@NonNull IconCompat iconCompat) {
                if (this.f4908g != null) {
                    throw new IllegalStateException("Created as a shortcut bubble, cannot set an Icon. Consider using BubbleMetadata.Builder(PendingIntent,Icon) instead.");
                }
                if (iconCompat == null) {
                    throw new NullPointerException("Bubbles require non-null icon");
                }
                this.f4903b = iconCompat;
                return this;
            }

            @NonNull
            public Builder setIntent(@NonNull PendingIntent pendingIntent) {
                if (this.f4908g != null) {
                    throw new IllegalStateException("Created as a shortcut bubble, cannot set a PendingIntent. Consider using BubbleMetadata.Builder(PendingIntent,Icon) instead.");
                }
                if (pendingIntent == null) {
                    throw new NullPointerException("Bubble requires non-null pending intent");
                }
                this.f4902a = pendingIntent;
                return this;
            }

            @NonNull
            public Builder setSuppressNotification(boolean z) {
                m2431a(2, z);
                return this;
            }

            @RequiresApi(30)
            public Builder(@NonNull String str) {
                if (!TextUtils.isEmpty(str)) {
                    this.f4908g = str;
                    return;
                }
                throw new NullPointerException("Bubble requires a non-null shortcut id");
            }

            public Builder(@NonNull PendingIntent pendingIntent, @NonNull IconCompat iconCompat) {
                if (pendingIntent == null) {
                    throw new NullPointerException("Bubble requires non-null pending intent");
                }
                if (iconCompat != null) {
                    this.f4902a = pendingIntent;
                    this.f4903b = iconCompat;
                    return;
                }
                throw new NullPointerException("Bubbles require non-null icon");
            }
        }

        @RequiresApi(29)
        /* renamed from: androidx.core.app.NotificationCompat$BubbleMetadata$a */
        /* loaded from: classes3.dex */
        public static class C0560a {
            private C0560a() {
            }

            @Nullable
            @RequiresApi(29)
            /* renamed from: a */
            public static BubbleMetadata m2432a(@Nullable Notification.BubbleMetadata bubbleMetadata) {
                if (bubbleMetadata == null || bubbleMetadata.getIntent() == null) {
                    return null;
                }
                Builder suppressNotification = new Builder(bubbleMetadata.getIntent(), IconCompat.createFromIcon(bubbleMetadata.getIcon())).setAutoExpandBubble(bubbleMetadata.getAutoExpandBubble()).setDeleteIntent(bubbleMetadata.getDeleteIntent()).setSuppressNotification(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    suppressNotification.setDesiredHeight(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    suppressNotification.setDesiredHeightResId(bubbleMetadata.getDesiredHeightResId());
                }
                return suppressNotification.build();
            }

            @Nullable
            @RequiresApi(29)
            /* renamed from: b */
            public static Notification.BubbleMetadata m2433b(@Nullable BubbleMetadata bubbleMetadata) {
                if (bubbleMetadata == null || bubbleMetadata.getIntent() == null) {
                    return null;
                }
                Notification.BubbleMetadata.Builder suppressNotification = new Notification.BubbleMetadata.Builder().setIcon(bubbleMetadata.getIcon().toIcon()).setIntent(bubbleMetadata.getIntent()).setDeleteIntent(bubbleMetadata.getDeleteIntent()).setAutoExpandBubble(bubbleMetadata.getAutoExpandBubble()).setSuppressNotification(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    suppressNotification.setDesiredHeight(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    suppressNotification.setDesiredHeightResId(bubbleMetadata.getDesiredHeightResId());
                }
                return suppressNotification.build();
            }
        }

        @RequiresApi(30)
        /* renamed from: androidx.core.app.NotificationCompat$BubbleMetadata$b */
        /* loaded from: classes3.dex */
        public static class C0561b {
            private C0561b() {
            }

            @Nullable
            @RequiresApi(30)
            /* renamed from: a */
            public static BubbleMetadata m2434a(@Nullable Notification.BubbleMetadata bubbleMetadata) {
                if (bubbleMetadata == null) {
                    return null;
                }
                Builder builder = bubbleMetadata.getShortcutId() != null ? new Builder(bubbleMetadata.getShortcutId()) : new Builder(bubbleMetadata.getIntent(), IconCompat.createFromIcon(bubbleMetadata.getIcon()));
                builder.setAutoExpandBubble(bubbleMetadata.getAutoExpandBubble()).setDeleteIntent(bubbleMetadata.getDeleteIntent()).setSuppressNotification(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    builder.setDesiredHeight(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    builder.setDesiredHeightResId(bubbleMetadata.getDesiredHeightResId());
                }
                return builder.build();
            }

            @Nullable
            @RequiresApi(30)
            /* renamed from: b */
            public static Notification.BubbleMetadata m2435b(@Nullable BubbleMetadata bubbleMetadata) {
                if (bubbleMetadata == null) {
                    return null;
                }
                Notification.BubbleMetadata.Builder builder = bubbleMetadata.getShortcutId() != null ? new Notification.BubbleMetadata.Builder(bubbleMetadata.getShortcutId()) : new Notification.BubbleMetadata.Builder(bubbleMetadata.getIntent(), bubbleMetadata.getIcon().toIcon());
                builder.setDeleteIntent(bubbleMetadata.getDeleteIntent()).setAutoExpandBubble(bubbleMetadata.getAutoExpandBubble()).setSuppressNotification(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    builder.setDesiredHeight(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    builder.setDesiredHeightResId(bubbleMetadata.getDesiredHeightResId());
                }
                return builder.build();
            }
        }

        @Nullable
        public static BubbleMetadata fromPlatform(@Nullable Notification.BubbleMetadata bubbleMetadata) {
            if (bubbleMetadata == null) {
                return null;
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                return C0561b.m2434a(bubbleMetadata);
            }
            if (i == 29) {
                return C0560a.m2432a(bubbleMetadata);
            }
            return null;
        }

        @Nullable
        public static Notification.BubbleMetadata toPlatform(@Nullable BubbleMetadata bubbleMetadata) {
            if (bubbleMetadata == null) {
                return null;
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                return C0561b.m2435b(bubbleMetadata);
            }
            if (i == 29) {
                return C0560a.m2433b(bubbleMetadata);
            }
            return null;
        }

        public boolean getAutoExpandBubble() {
            return (this.f4900f & 1) != 0;
        }

        @Nullable
        public PendingIntent getDeleteIntent() {
            return this.f4896b;
        }

        @Dimension(unit = 0)
        public int getDesiredHeight() {
            return this.f4898d;
        }

        @DimenRes
        public int getDesiredHeightResId() {
            return this.f4899e;
        }

        @Nullable
        @SuppressLint({"InvalidNullConversion"})
        public IconCompat getIcon() {
            return this.f4897c;
        }

        @Nullable
        @SuppressLint({"InvalidNullConversion"})
        public PendingIntent getIntent() {
            return this.f4895a;
        }

        @Nullable
        public String getShortcutId() {
            return this.f4901g;
        }

        public boolean isNotificationSuppressed() {
            return (this.f4900f & 2) != 0;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void setFlags(int i) {
            this.f4900f = i;
        }

        public BubbleMetadata(@Nullable PendingIntent pendingIntent, @Nullable PendingIntent pendingIntent2, @Nullable IconCompat iconCompat, int i, @DimenRes int i2, int i3, @Nullable String str) {
            this.f4895a = pendingIntent;
            this.f4897c = iconCompat;
            this.f4898d = i;
            this.f4899e = i2;
            this.f4896b = pendingIntent2;
            this.f4900f = i3;
            this.f4901g = str;
        }
    }

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: U */
        public static final int f4909U = 5120;

        /* renamed from: A */
        public String f4910A;

        /* renamed from: B */
        public Bundle f4911B;

        /* renamed from: C */
        public int f4912C;

        /* renamed from: D */
        public int f4913D;

        /* renamed from: E */
        public Notification f4914E;

        /* renamed from: F */
        public RemoteViews f4915F;

        /* renamed from: G */
        public RemoteViews f4916G;

        /* renamed from: H */
        public RemoteViews f4917H;

        /* renamed from: I */
        public String f4918I;

        /* renamed from: J */
        public int f4919J;

        /* renamed from: K */
        public String f4920K;

        /* renamed from: L */
        public LocusIdCompat f4921L;

        /* renamed from: M */
        public long f4922M;

        /* renamed from: N */
        public int f4923N;

        /* renamed from: O */
        public int f4924O;

        /* renamed from: P */
        public boolean f4925P;

        /* renamed from: Q */
        public BubbleMetadata f4926Q;

        /* renamed from: R */
        public Notification f4927R;

        /* renamed from: S */
        public boolean f4928S;

        /* renamed from: T */
        public Object f4929T;

        /* renamed from: a */
        public ArrayList<Action> f4930a;

        /* renamed from: b */
        public CharSequence f4931b;

        /* renamed from: c */
        public CharSequence f4932c;

        /* renamed from: d */
        public PendingIntent f4933d;

        /* renamed from: e */
        public PendingIntent f4934e;

        /* renamed from: f */
        public RemoteViews f4935f;

        /* renamed from: g */
        public IconCompat f4936g;

        /* renamed from: h */
        public CharSequence f4937h;

        /* renamed from: i */
        public int f4938i;

        /* renamed from: j */
        public int f4939j;

        /* renamed from: k */
        public boolean f4940k;

        /* renamed from: l */
        public boolean f4941l;

        /* renamed from: m */
        public boolean f4942m;

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public ArrayList<Action> mActions;

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public Context mContext;

        @Deprecated
        public ArrayList<String> mPeople;

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public ArrayList<Person> mPersonList;

        /* renamed from: n */
        public Style f4943n;

        /* renamed from: o */
        public CharSequence f4944o;

        /* renamed from: p */
        public CharSequence f4945p;

        /* renamed from: q */
        public CharSequence[] f4946q;

        /* renamed from: r */
        public int f4947r;

        /* renamed from: s */
        public int f4948s;

        /* renamed from: t */
        public boolean f4949t;

        /* renamed from: u */
        public String f4950u;

        /* renamed from: v */
        public boolean f4951v;

        /* renamed from: w */
        public String f4952w;

        /* renamed from: x */
        public boolean f4953x;

        /* renamed from: y */
        public boolean f4954y;

        /* renamed from: z */
        public boolean f4955z;

        @RequiresApi(21)
        /* renamed from: androidx.core.app.NotificationCompat$Builder$a */
        /* loaded from: classes3.dex */
        public static class C0562a {
            private C0562a() {
            }

            @DoNotInline
            /* renamed from: a */
            public static AudioAttributes m2439a(AudioAttributes.Builder builder) {
                return builder.build();
            }

            @DoNotInline
            /* renamed from: b */
            public static AudioAttributes.Builder m2440b() {
                return new AudioAttributes.Builder();
            }

            @DoNotInline
            /* renamed from: c */
            public static AudioAttributes.Builder m2441c(AudioAttributes.Builder builder, int i) {
                return builder.setContentType(i);
            }

            @DoNotInline
            /* renamed from: d */
            public static AudioAttributes.Builder m2442d(AudioAttributes.Builder builder, int i) {
                return builder.setLegacyStreamType(i);
            }

            @DoNotInline
            /* renamed from: e */
            public static AudioAttributes.Builder m2443e(AudioAttributes.Builder builder, int i) {
                return builder.setUsage(i);
            }
        }

        @RequiresApi(23)
        /* renamed from: androidx.core.app.NotificationCompat$Builder$b */
        /* loaded from: classes3.dex */
        public static class C0563b {
            private C0563b() {
            }

            @DoNotInline
            /* renamed from: a */
            public static Icon m2444a(Notification notification) {
                return notification.getLargeIcon();
            }

            @DoNotInline
            /* renamed from: b */
            public static Icon m2445b(Notification notification) {
                return notification.getSmallIcon();
            }
        }

        @RequiresApi(24)
        /* renamed from: androidx.core.app.NotificationCompat$Builder$c */
        /* loaded from: classes3.dex */
        public static class C0564c {
            private C0564c() {
            }

            @DoNotInline
            /* renamed from: a */
            public static RemoteViews m2446a(Notification.Builder builder) {
                return builder.createHeadsUpContentView();
            }

            @DoNotInline
            /* renamed from: b */
            public static RemoteViews m2447b(Notification.Builder builder) {
                return builder.createContentView();
            }

            @DoNotInline
            /* renamed from: c */
            public static RemoteViews m2448c(Notification.Builder builder) {
                return builder.createHeadsUpContentView();
            }

            @DoNotInline
            /* renamed from: d */
            public static Notification.Builder m2449d(Context context, Notification notification) {
                return Notification.Builder.recoverBuilder(context, notification);
            }
        }

        public Builder(@NonNull Context context, @NonNull Notification notification) {
            this(context, NotificationCompat.getChannelId(notification));
            Bundle bundle = notification.extras;
            Style extractStyleFromNotification = Style.extractStyleFromNotification(notification);
            setContentTitle(NotificationCompat.getContentTitle(notification)).setContentText(NotificationCompat.getContentText(notification)).setContentInfo(NotificationCompat.getContentInfo(notification)).setSubText(NotificationCompat.getSubText(notification)).setSettingsText(NotificationCompat.getSettingsText(notification)).setStyle(extractStyleFromNotification).setGroup(NotificationCompat.getGroup(notification)).setGroupSummary(NotificationCompat.isGroupSummary(notification)).setLocusId(NotificationCompat.getLocusId(notification)).setWhen(notification.when).setShowWhen(NotificationCompat.getShowWhen(notification)).setUsesChronometer(NotificationCompat.getUsesChronometer(notification)).setAutoCancel(NotificationCompat.getAutoCancel(notification)).setOnlyAlertOnce(NotificationCompat.getOnlyAlertOnce(notification)).setOngoing(NotificationCompat.getOngoing(notification)).setLocalOnly(NotificationCompat.getLocalOnly(notification)).setLargeIcon(notification.largeIcon).setBadgeIconType(NotificationCompat.getBadgeIconType(notification)).setCategory(NotificationCompat.getCategory(notification)).setBubbleMetadata(NotificationCompat.getBubbleMetadata(notification)).setNumber(notification.number).setTicker(notification.tickerText).setContentIntent(notification.contentIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(notification.fullScreenIntent, NotificationCompat.m2415b(notification)).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setDefaults(notification.defaults).setPriority(notification.priority).setColor(NotificationCompat.getColor(notification)).setVisibility(NotificationCompat.getVisibility(notification)).setPublicVersion(NotificationCompat.getPublicVersion(notification)).setSortKey(NotificationCompat.getSortKey(notification)).setTimeoutAfter(NotificationCompat.getTimeoutAfter(notification)).setShortcutId(NotificationCompat.getShortcutId(notification)).setProgress(bundle.getInt(NotificationCompat.EXTRA_PROGRESS_MAX), bundle.getInt(NotificationCompat.EXTRA_PROGRESS), bundle.getBoolean(NotificationCompat.EXTRA_PROGRESS_INDETERMINATE)).setAllowSystemGeneratedContextualActions(NotificationCompat.getAllowSystemGeneratedContextualActions(notification)).setSmallIcon(notification.icon, notification.iconLevel).addExtras(m2436a(notification, extractStyleFromNotification));
            this.f4929T = C0563b.m2445b(notification);
            Icon m2444a = C0563b.m2444a(notification);
            if (m2444a != null) {
                this.f4936g = IconCompat.createFromIcon(m2444a);
            }
            Notification.Action[] actionArr = notification.actions;
            if (actionArr != null && actionArr.length != 0) {
                for (Notification.Action action : actionArr) {
                    addAction(Action.Builder.fromAndroidAction(action).build());
                }
            }
            List<Action> invisibleActions = NotificationCompat.getInvisibleActions(notification);
            if (!invisibleActions.isEmpty()) {
                Iterator<Action> it2 = invisibleActions.iterator();
                while (it2.hasNext()) {
                    addInvisibleAction(it2.next());
                }
            }
            String[] stringArray = notification.extras.getStringArray(NotificationCompat.EXTRA_PEOPLE);
            if (stringArray != null && stringArray.length != 0) {
                for (String str : stringArray) {
                    addPerson(str);
                }
            }
            ArrayList parcelableArrayList = notification.extras.getParcelableArrayList(NotificationCompat.EXTRA_PEOPLE_LIST);
            if (parcelableArrayList != null && !parcelableArrayList.isEmpty()) {
                Iterator it3 = parcelableArrayList.iterator();
                while (it3.hasNext()) {
                    addPerson(Person.fromAndroidPerson((android.app.Person) it3.next()));
                }
            }
            if (bundle.containsKey(NotificationCompat.EXTRA_CHRONOMETER_COUNT_DOWN)) {
                setChronometerCountDown(bundle.getBoolean(NotificationCompat.EXTRA_CHRONOMETER_COUNT_DOWN));
            }
            if (bundle.containsKey(NotificationCompat.EXTRA_COLORIZED)) {
                setColorized(bundle.getBoolean(NotificationCompat.EXTRA_COLORIZED));
            }
        }

        @Nullable
        /* renamed from: a */
        public static Bundle m2436a(@NonNull Notification notification, @Nullable Style style) {
            if (notification.extras == null) {
                return null;
            }
            Bundle bundle = new Bundle(notification.extras);
            bundle.remove(NotificationCompat.EXTRA_TITLE);
            bundle.remove(NotificationCompat.EXTRA_TEXT);
            bundle.remove(NotificationCompat.EXTRA_INFO_TEXT);
            bundle.remove(NotificationCompat.EXTRA_SUB_TEXT);
            bundle.remove(NotificationCompat.EXTRA_CHANNEL_ID);
            bundle.remove(NotificationCompat.EXTRA_CHANNEL_GROUP_ID);
            bundle.remove(NotificationCompat.EXTRA_SHOW_WHEN);
            bundle.remove(NotificationCompat.EXTRA_PROGRESS);
            bundle.remove(NotificationCompat.EXTRA_PROGRESS_MAX);
            bundle.remove(NotificationCompat.EXTRA_PROGRESS_INDETERMINATE);
            bundle.remove(NotificationCompat.EXTRA_CHRONOMETER_COUNT_DOWN);
            bundle.remove(NotificationCompat.EXTRA_COLORIZED);
            bundle.remove(NotificationCompat.EXTRA_PEOPLE_LIST);
            bundle.remove(NotificationCompat.EXTRA_PEOPLE);
            bundle.remove(NotificationCompatExtras.EXTRA_SORT_KEY);
            bundle.remove(NotificationCompatExtras.EXTRA_GROUP_KEY);
            bundle.remove(NotificationCompatExtras.EXTRA_GROUP_SUMMARY);
            bundle.remove(NotificationCompatExtras.EXTRA_LOCAL_ONLY);
            bundle.remove(NotificationCompatExtras.EXTRA_ACTION_EXTRAS);
            Bundle bundle2 = bundle.getBundle(CarExtender.f4968d);
            if (bundle2 != null) {
                Bundle bundle3 = new Bundle(bundle2);
                bundle3.remove(CarExtender.f4972h);
                bundle.putBundle(CarExtender.f4968d, bundle3);
            }
            if (style != null) {
                style.clearCompatExtraKeys(bundle);
            }
            return bundle;
        }

        @Nullable
        public static CharSequence limitCharSequenceLength(@Nullable CharSequence charSequence) {
            return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
        }

        @NonNull
        public Builder addAction(int i, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
            this.mActions.add(new Action(i, charSequence, pendingIntent));
            return this;
        }

        @NonNull
        public Builder addExtras(@Nullable Bundle bundle) {
            if (bundle != null) {
                Bundle bundle2 = this.f4911B;
                if (bundle2 == null) {
                    this.f4911B = new Bundle(bundle);
                } else {
                    bundle2.putAll(bundle);
                }
            }
            return this;
        }

        @NonNull
        @RequiresApi(21)
        public Builder addInvisibleAction(int i, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
            this.f4930a.add(new Action(i, charSequence, pendingIntent));
            return this;
        }

        @NonNull
        @Deprecated
        public Builder addPerson(@Nullable String str) {
            if (str != null && !str.isEmpty()) {
                this.mPeople.add(str);
            }
            return this;
        }

        /* renamed from: b */
        public final void m2437b(int i, boolean z) {
            if (z) {
                Notification notification = this.f4927R;
                notification.flags = i | notification.flags;
            } else {
                Notification notification2 = this.f4927R;
                notification2.flags = (~i) & notification2.flags;
            }
        }

        @NonNull
        public Notification build() {
            return new C0618a(this).m2643b();
        }

        /* renamed from: c */
        public final boolean m2438c() {
            Style style = this.f4943n;
            return style == null || !style.displayCustomViewInline();
        }

        @NonNull
        public Builder clearActions() {
            this.mActions.clear();
            return this;
        }

        @NonNull
        public Builder clearInvisibleActions() {
            this.f4930a.clear();
            Bundle bundle = this.f4911B.getBundle(CarExtender.f4968d);
            if (bundle != null) {
                Bundle bundle2 = new Bundle(bundle);
                bundle2.remove(CarExtender.f4972h);
                this.f4911B.putBundle(CarExtender.f4968d, bundle2);
            }
            return this;
        }

        @NonNull
        public Builder clearPeople() {
            this.mPersonList.clear();
            this.mPeople.clear();
            return this;
        }

        @Nullable
        @SuppressLint({"BuilderSetStyle"})
        public RemoteViews createBigContentView() {
            RemoteViews makeBigContentView;
            if (this.f4916G != null && m2438c()) {
                return this.f4916G;
            }
            C0618a c0618a = new C0618a(this);
            Style style = this.f4943n;
            return (style == null || (makeBigContentView = style.makeBigContentView(c0618a)) == null) ? C0564c.m2446a(C0564c.m2449d(this.mContext, c0618a.m2643b())) : makeBigContentView;
        }

        @Nullable
        @SuppressLint({"BuilderSetStyle"})
        public RemoteViews createContentView() {
            RemoteViews makeContentView;
            if (this.f4915F != null && m2438c()) {
                return this.f4915F;
            }
            C0618a c0618a = new C0618a(this);
            Style style = this.f4943n;
            return (style == null || (makeContentView = style.makeContentView(c0618a)) == null) ? C0564c.m2447b(C0564c.m2449d(this.mContext, c0618a.m2643b())) : makeContentView;
        }

        @Nullable
        @SuppressLint({"BuilderSetStyle"})
        public RemoteViews createHeadsUpContentView() {
            RemoteViews makeHeadsUpContentView;
            if (this.f4917H != null && m2438c()) {
                return this.f4917H;
            }
            C0618a c0618a = new C0618a(this);
            Style style = this.f4943n;
            return (style == null || (makeHeadsUpContentView = style.makeHeadsUpContentView(c0618a)) == null) ? C0564c.m2448c(C0564c.m2449d(this.mContext, c0618a.m2643b())) : makeHeadsUpContentView;
        }

        @NonNull
        public Builder extend(@NonNull Extender extender) {
            extender.extend(this);
            return this;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews getBigContentView() {
            return this.f4916G;
        }

        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public BubbleMetadata getBubbleMetadata() {
            return this.f4926Q;
        }

        @ColorInt
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public int getColor() {
            return this.f4912C;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews getContentView() {
            return this.f4915F;
        }

        @NonNull
        public Bundle getExtras() {
            if (this.f4911B == null) {
                this.f4911B = new Bundle();
            }
            return this.f4911B;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public int getForegroundServiceBehavior() {
            return this.f4924O;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews getHeadsUpContentView() {
            return this.f4917H;
        }

        @NonNull
        @Deprecated
        public Notification getNotification() {
            return build();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public int getPriority() {
            return this.f4939j;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public long getWhenIfShowing() {
            if (this.f4940k) {
                return this.f4927R.when;
            }
            return 0L;
        }

        @NonNull
        public Builder setAllowSystemGeneratedContextualActions(boolean z) {
            this.f4925P = z;
            return this;
        }

        @NonNull
        public Builder setAutoCancel(boolean z) {
            m2437b(16, z);
            return this;
        }

        @NonNull
        public Builder setBadgeIconType(int i) {
            this.f4919J = i;
            return this;
        }

        @NonNull
        public Builder setBubbleMetadata(@Nullable BubbleMetadata bubbleMetadata) {
            this.f4926Q = bubbleMetadata;
            return this;
        }

        @NonNull
        public Builder setCategory(@Nullable String str) {
            this.f4910A = str;
            return this;
        }

        @NonNull
        public Builder setChannelId(@NonNull String str) {
            this.f4918I = str;
            return this;
        }

        @NonNull
        @RequiresApi(24)
        public Builder setChronometerCountDown(boolean z) {
            this.f4942m = z;
            getExtras().putBoolean(NotificationCompat.EXTRA_CHRONOMETER_COUNT_DOWN, z);
            return this;
        }

        @NonNull
        public Builder setColor(@ColorInt int i) {
            this.f4912C = i;
            return this;
        }

        @NonNull
        public Builder setColorized(boolean z) {
            this.f4954y = z;
            this.f4955z = true;
            return this;
        }

        @NonNull
        public Builder setContent(@Nullable RemoteViews remoteViews) {
            this.f4927R.contentView = remoteViews;
            return this;
        }

        @NonNull
        public Builder setContentInfo(@Nullable CharSequence charSequence) {
            this.f4937h = limitCharSequenceLength(charSequence);
            return this;
        }

        @NonNull
        public Builder setContentIntent(@Nullable PendingIntent pendingIntent) {
            this.f4933d = pendingIntent;
            return this;
        }

        @NonNull
        public Builder setContentText(@Nullable CharSequence charSequence) {
            this.f4932c = limitCharSequenceLength(charSequence);
            return this;
        }

        @NonNull
        public Builder setContentTitle(@Nullable CharSequence charSequence) {
            this.f4931b = limitCharSequenceLength(charSequence);
            return this;
        }

        @NonNull
        public Builder setCustomBigContentView(@Nullable RemoteViews remoteViews) {
            this.f4916G = remoteViews;
            return this;
        }

        @NonNull
        public Builder setCustomContentView(@Nullable RemoteViews remoteViews) {
            this.f4915F = remoteViews;
            return this;
        }

        @NonNull
        public Builder setCustomHeadsUpContentView(@Nullable RemoteViews remoteViews) {
            this.f4917H = remoteViews;
            return this;
        }

        @NonNull
        public Builder setDefaults(int i) {
            Notification notification = this.f4927R;
            notification.defaults = i;
            if ((i & 4) != 0) {
                notification.flags |= 1;
            }
            return this;
        }

        @NonNull
        public Builder setDeleteIntent(@Nullable PendingIntent pendingIntent) {
            this.f4927R.deleteIntent = pendingIntent;
            return this;
        }

        @NonNull
        public Builder setExtras(@Nullable Bundle bundle) {
            this.f4911B = bundle;
            return this;
        }

        @NonNull
        public Builder setForegroundServiceBehavior(int i) {
            this.f4924O = i;
            return this;
        }

        @NonNull
        public Builder setFullScreenIntent(@Nullable PendingIntent pendingIntent, boolean z) {
            this.f4934e = pendingIntent;
            m2437b(128, z);
            return this;
        }

        @NonNull
        public Builder setGroup(@Nullable String str) {
            this.f4950u = str;
            return this;
        }

        @NonNull
        public Builder setGroupAlertBehavior(int i) {
            this.f4923N = i;
            return this;
        }

        @NonNull
        public Builder setGroupSummary(boolean z) {
            this.f4951v = z;
            return this;
        }

        @NonNull
        public Builder setLargeIcon(@Nullable Bitmap bitmap) {
            this.f4936g = bitmap == null ? null : IconCompat.createWithBitmap(NotificationCompat.reduceLargeIconSize(this.mContext, bitmap));
            return this;
        }

        @NonNull
        public Builder setLights(@ColorInt int i, int i2, int i3) {
            Notification notification = this.f4927R;
            notification.ledARGB = i;
            notification.ledOnMS = i2;
            notification.ledOffMS = i3;
            notification.flags = ((i2 == 0 || i3 == 0) ? 0 : 1) | (notification.flags & (-2));
            return this;
        }

        @NonNull
        public Builder setLocalOnly(boolean z) {
            this.f4953x = z;
            return this;
        }

        @NonNull
        public Builder setLocusId(@Nullable LocusIdCompat locusIdCompat) {
            this.f4921L = locusIdCompat;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setNotificationSilent() {
            this.f4928S = true;
            return this;
        }

        @NonNull
        public Builder setNumber(int i) {
            this.f4938i = i;
            return this;
        }

        @NonNull
        public Builder setOngoing(boolean z) {
            m2437b(2, z);
            return this;
        }

        @NonNull
        public Builder setOnlyAlertOnce(boolean z) {
            m2437b(8, z);
            return this;
        }

        @NonNull
        public Builder setPriority(int i) {
            this.f4939j = i;
            return this;
        }

        @NonNull
        public Builder setProgress(int i, int i2, boolean z) {
            this.f4947r = i;
            this.f4948s = i2;
            this.f4949t = z;
            return this;
        }

        @NonNull
        public Builder setPublicVersion(@Nullable Notification notification) {
            this.f4914E = notification;
            return this;
        }

        @NonNull
        public Builder setRemoteInputHistory(@Nullable CharSequence[] charSequenceArr) {
            this.f4946q = charSequenceArr;
            return this;
        }

        @NonNull
        public Builder setSettingsText(@Nullable CharSequence charSequence) {
            this.f4945p = limitCharSequenceLength(charSequence);
            return this;
        }

        @NonNull
        public Builder setShortcutId(@Nullable String str) {
            this.f4920K = str;
            return this;
        }

        @NonNull
        public Builder setShortcutInfo(@Nullable ShortcutInfoCompat shortcutInfoCompat) {
            if (shortcutInfoCompat == null) {
                return this;
            }
            this.f4920K = shortcutInfoCompat.getId();
            if (this.f4921L == null) {
                if (shortcutInfoCompat.getLocusId() != null) {
                    this.f4921L = shortcutInfoCompat.getLocusId();
                } else if (shortcutInfoCompat.getId() != null) {
                    this.f4921L = new LocusIdCompat(shortcutInfoCompat.getId());
                }
            }
            if (this.f4931b == null) {
                setContentTitle(shortcutInfoCompat.getShortLabel());
            }
            return this;
        }

        @NonNull
        public Builder setShowWhen(boolean z) {
            this.f4940k = z;
            return this;
        }

        @NonNull
        public Builder setSilent(boolean z) {
            this.f4928S = z;
            return this;
        }

        @NonNull
        @RequiresApi(23)
        public Builder setSmallIcon(@NonNull IconCompat iconCompat) {
            this.f4929T = iconCompat.toIcon(this.mContext);
            return this;
        }

        @NonNull
        public Builder setSortKey(@Nullable String str) {
            this.f4952w = str;
            return this;
        }

        @NonNull
        public Builder setSound(@Nullable Uri uri) {
            Notification notification = this.f4927R;
            notification.sound = uri;
            notification.audioStreamType = -1;
            AudioAttributes.Builder m2443e = C0562a.m2443e(C0562a.m2441c(C0562a.m2440b(), 4), 5);
            this.f4927R.audioAttributes = C0562a.m2439a(m2443e);
            return this;
        }

        @NonNull
        public Builder setStyle(@Nullable Style style) {
            if (this.f4943n != style) {
                this.f4943n = style;
                if (style != null) {
                    style.setBuilder(this);
                }
            }
            return this;
        }

        @NonNull
        public Builder setSubText(@Nullable CharSequence charSequence) {
            this.f4944o = limitCharSequenceLength(charSequence);
            return this;
        }

        @NonNull
        public Builder setTicker(@Nullable CharSequence charSequence) {
            this.f4927R.tickerText = limitCharSequenceLength(charSequence);
            return this;
        }

        @NonNull
        public Builder setTimeoutAfter(long j) {
            this.f4922M = j;
            return this;
        }

        @NonNull
        public Builder setUsesChronometer(boolean z) {
            this.f4941l = z;
            return this;
        }

        @NonNull
        public Builder setVibrate(@Nullable long[] jArr) {
            this.f4927R.vibrate = jArr;
            return this;
        }

        @NonNull
        public Builder setVisibility(int i) {
            this.f4913D = i;
            return this;
        }

        @NonNull
        public Builder setWhen(long j) {
            this.f4927R.when = j;
            return this;
        }

        @NonNull
        public Builder addAction(@Nullable Action action) {
            if (action != null) {
                this.mActions.add(action);
            }
            return this;
        }

        @NonNull
        @RequiresApi(21)
        public Builder addInvisibleAction(@Nullable Action action) {
            if (action != null) {
                this.f4930a.add(action);
            }
            return this;
        }

        @NonNull
        public Builder setSmallIcon(int i) {
            this.f4927R.icon = i;
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setTicker(@Nullable CharSequence charSequence, @Nullable RemoteViews remoteViews) {
            this.f4927R.tickerText = limitCharSequenceLength(charSequence);
            this.f4935f = remoteViews;
            return this;
        }

        @NonNull
        public Builder addPerson(@Nullable Person person) {
            if (person != null) {
                this.mPersonList.add(person);
            }
            return this;
        }

        @NonNull
        public Builder setSmallIcon(int i, int i2) {
            Notification notification = this.f4927R;
            notification.icon = i;
            notification.iconLevel = i2;
            return this;
        }

        @NonNull
        @RequiresApi(23)
        public Builder setLargeIcon(@Nullable Icon icon) {
            this.f4936g = icon == null ? null : IconCompat.createFromIcon(icon);
            return this;
        }

        @NonNull
        public Builder setSound(@Nullable Uri uri, int i) {
            Notification notification = this.f4927R;
            notification.sound = uri;
            notification.audioStreamType = i;
            AudioAttributes.Builder m2442d = C0562a.m2442d(C0562a.m2441c(C0562a.m2440b(), 4), i);
            this.f4927R.audioAttributes = C0562a.m2439a(m2442d);
            return this;
        }

        public Builder(@NonNull Context context, @NonNull String str) {
            this.mActions = new ArrayList<>();
            this.mPersonList = new ArrayList<>();
            this.f4930a = new ArrayList<>();
            this.f4940k = true;
            this.f4953x = false;
            this.f4912C = 0;
            this.f4913D = 0;
            this.f4919J = 0;
            this.f4923N = 0;
            this.f4924O = 0;
            Notification notification = new Notification();
            this.f4927R = notification;
            this.mContext = context;
            this.f4918I = str;
            notification.when = System.currentTimeMillis();
            this.f4927R.audioStreamType = -1;
            this.f4939j = 0;
            this.mPeople = new ArrayList<>();
            this.f4925P = true;
        }

        @Deprecated
        public Builder(@NonNull Context context) {
            this(context, (String) null);
        }
    }

    /* loaded from: classes3.dex */
    public static class CallStyle extends Style {
        public static final int CALL_TYPE_INCOMING = 1;
        public static final int CALL_TYPE_ONGOING = 2;
        public static final int CALL_TYPE_SCREENING = 3;
        public static final int CALL_TYPE_UNKNOWN = 0;

        /* renamed from: n */
        public static final String f4956n = "androidx.core.app.NotificationCompat$CallStyle";

        /* renamed from: o */
        public static final String f4957o = "key_action_priority";

        /* renamed from: d */
        public int f4958d;

        /* renamed from: e */
        public Person f4959e;

        /* renamed from: f */
        public PendingIntent f4960f;

        /* renamed from: g */
        public PendingIntent f4961g;

        /* renamed from: h */
        public PendingIntent f4962h;

        /* renamed from: i */
        public boolean f4963i;

        /* renamed from: j */
        public Integer f4964j;

        /* renamed from: k */
        public Integer f4965k;

        /* renamed from: l */
        public IconCompat f4966l;

        /* renamed from: m */
        public CharSequence f4967m;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        /* loaded from: classes3.dex */
        public @interface CallType {
        }

        @RequiresApi(20)
        /* renamed from: androidx.core.app.NotificationCompat$CallStyle$a */
        /* loaded from: classes3.dex */
        public static class C0565a {
            private C0565a() {
            }

            @DoNotInline
            /* renamed from: a */
            public static Notification.Action.Builder m2455a(Notification.Action.Builder builder, Bundle bundle) {
                return builder.addExtras(bundle);
            }

            @DoNotInline
            /* renamed from: b */
            public static Notification.Action.Builder m2456b(Notification.Action.Builder builder, android.app.RemoteInput remoteInput) {
                return builder.addRemoteInput(remoteInput);
            }

            @DoNotInline
            /* renamed from: c */
            public static Notification.Action m2457c(Notification.Action.Builder builder) {
                return builder.build();
            }

            @DoNotInline
            /* renamed from: d */
            public static Notification.Action.Builder m2458d(int i, CharSequence charSequence, PendingIntent pendingIntent) {
                return new Notification.Action.Builder(i, charSequence, pendingIntent);
            }
        }

        @RequiresApi(21)
        /* renamed from: androidx.core.app.NotificationCompat$CallStyle$b */
        /* loaded from: classes3.dex */
        public static class C0566b {
            private C0566b() {
            }

            @DoNotInline
            /* renamed from: a */
            public static Notification.Builder m2459a(Notification.Builder builder, String str) {
                return builder.addPerson(str);
            }

            @DoNotInline
            /* renamed from: b */
            public static Notification.Builder m2460b(Notification.Builder builder, String str) {
                return builder.setCategory(str);
            }
        }

        @RequiresApi(23)
        /* renamed from: androidx.core.app.NotificationCompat$CallStyle$c */
        /* loaded from: classes3.dex */
        public static class C0567c {
            private C0567c() {
            }

            @DoNotInline
            /* renamed from: a */
            public static Parcelable m2461a(Icon icon) {
                return icon;
            }

            @DoNotInline
            /* renamed from: b */
            public static Notification.Action.Builder m2462b(Icon icon, CharSequence charSequence, PendingIntent pendingIntent) {
                return new Notification.Action.Builder(icon, charSequence, pendingIntent);
            }

            @DoNotInline
            /* renamed from: c */
            public static void m2463c(Notification.Builder builder, Icon icon) {
                builder.setLargeIcon(icon);
            }
        }

        @RequiresApi(24)
        /* renamed from: androidx.core.app.NotificationCompat$CallStyle$d */
        /* loaded from: classes3.dex */
        public static class C0568d {
            private C0568d() {
            }

            @DoNotInline
            /* renamed from: a */
            public static Notification.Action.Builder m2464a(Notification.Action.Builder builder, boolean z) {
                return builder.setAllowGeneratedReplies(z);
            }
        }

        @RequiresApi(28)
        /* renamed from: androidx.core.app.NotificationCompat$CallStyle$e */
        /* loaded from: classes3.dex */
        public static class C0569e {
            private C0569e() {
            }

            @DoNotInline
            /* renamed from: a */
            public static Notification.Builder m2465a(Notification.Builder builder, android.app.Person person) {
                return builder.addPerson(person);
            }

            @DoNotInline
            /* renamed from: b */
            public static Parcelable m2466b(android.app.Person person) {
                return person;
            }
        }

        @RequiresApi(31)
        /* renamed from: androidx.core.app.NotificationCompat$CallStyle$f */
        /* loaded from: classes3.dex */
        public static class C0570f {
            private C0570f() {
            }

            @DoNotInline
            /* renamed from: a */
            public static Notification.CallStyle m2467a(@NonNull android.app.Person person, @NonNull PendingIntent pendingIntent, @NonNull PendingIntent pendingIntent2) {
                return Notification.CallStyle.forIncomingCall(person, pendingIntent, pendingIntent2);
            }

            @DoNotInline
            /* renamed from: b */
            public static Notification.CallStyle m2468b(@NonNull android.app.Person person, @NonNull PendingIntent pendingIntent) {
                return Notification.CallStyle.forOngoingCall(person, pendingIntent);
            }

            @DoNotInline
            /* renamed from: c */
            public static Notification.CallStyle m2469c(@NonNull android.app.Person person, @NonNull PendingIntent pendingIntent, @NonNull PendingIntent pendingIntent2) {
                return Notification.CallStyle.forScreeningCall(person, pendingIntent, pendingIntent2);
            }

            @DoNotInline
            /* renamed from: d */
            public static Notification.CallStyle m2470d(Notification.CallStyle callStyle, @ColorInt int i) {
                return callStyle.setAnswerButtonColorHint(i);
            }

            @DoNotInline
            /* renamed from: e */
            public static Notification.Action.Builder m2471e(Notification.Action.Builder builder, boolean z) {
                return builder.setAuthenticationRequired(z);
            }

            @DoNotInline
            /* renamed from: f */
            public static Notification.CallStyle m2472f(Notification.CallStyle callStyle, @ColorInt int i) {
                return callStyle.setDeclineButtonColorHint(i);
            }

            @DoNotInline
            /* renamed from: g */
            public static Notification.CallStyle m2473g(Notification.CallStyle callStyle, boolean z) {
                return callStyle.setIsVideo(z);
            }

            @DoNotInline
            /* renamed from: h */
            public static Notification.CallStyle m2474h(Notification.CallStyle callStyle, @Nullable Icon icon) {
                return callStyle.setVerificationIcon(icon);
            }

            @DoNotInline
            /* renamed from: i */
            public static Notification.CallStyle m2475i(Notification.CallStyle callStyle, @Nullable CharSequence charSequence) {
                return callStyle.setVerificationText(charSequence);
            }
        }

        public CallStyle() {
        }

        @NonNull
        public static CallStyle forIncomingCall(@NonNull Person person, @NonNull PendingIntent pendingIntent, @NonNull PendingIntent pendingIntent2) {
            Objects.requireNonNull(pendingIntent, "declineIntent is required");
            Objects.requireNonNull(pendingIntent2, "answerIntent is required");
            return new CallStyle(1, person, null, pendingIntent, pendingIntent2);
        }

        @NonNull
        public static CallStyle forOngoingCall(@NonNull Person person, @NonNull PendingIntent pendingIntent) {
            Objects.requireNonNull(pendingIntent, "hangUpIntent is required");
            return new CallStyle(2, person, pendingIntent, null, null);
        }

        @NonNull
        public static CallStyle forScreeningCall(@NonNull Person person, @NonNull PendingIntent pendingIntent, @NonNull PendingIntent pendingIntent2) {
            Objects.requireNonNull(pendingIntent, "hangUpIntent is required");
            Objects.requireNonNull(pendingIntent2, "answerIntent is required");
            return new CallStyle(3, person, pendingIntent, null, pendingIntent2);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void addCompatExtras(@NonNull Bundle bundle) {
            super.addCompatExtras(bundle);
            bundle.putInt(NotificationCompat.EXTRA_CALL_TYPE, this.f4958d);
            bundle.putBoolean(NotificationCompat.EXTRA_CALL_IS_VIDEO, this.f4963i);
            Person person = this.f4959e;
            if (person != null) {
                bundle.putParcelable(NotificationCompat.EXTRA_CALL_PERSON, C0569e.m2466b(person.toAndroidPerson()));
            }
            IconCompat iconCompat = this.f4966l;
            if (iconCompat != null) {
                bundle.putParcelable(NotificationCompat.EXTRA_VERIFICATION_ICON, C0567c.m2461a(iconCompat.toIcon(this.mBuilder.mContext)));
            }
            bundle.putCharSequence(NotificationCompat.EXTRA_VERIFICATION_TEXT, this.f4967m);
            bundle.putParcelable(NotificationCompat.EXTRA_ANSWER_INTENT, this.f4960f);
            bundle.putParcelable(NotificationCompat.EXTRA_DECLINE_INTENT, this.f4961g);
            bundle.putParcelable(NotificationCompat.EXTRA_HANG_UP_INTENT, this.f4962h);
            Integer num = this.f4964j;
            if (num != null) {
                bundle.putInt(NotificationCompat.EXTRA_ANSWER_COLOR, num.intValue());
            }
            Integer num2 = this.f4965k;
            if (num2 != null) {
                bundle.putInt(NotificationCompat.EXTRA_DECLINE_COLOR, num2.intValue());
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            CharSequence charSequence = null;
            r2 = null;
            Notification.CallStyle m2467a = null;
            charSequence = null;
            if (Build.VERSION.SDK_INT < 31) {
                Notification.Builder builder = notificationBuilderWithBuilderAccessor.getBuilder();
                Person person = this.f4959e;
                builder.setContentTitle(person != null ? person.getName() : null);
                Bundle bundle = this.mBuilder.f4911B;
                if (bundle != null && bundle.containsKey(NotificationCompat.EXTRA_TEXT)) {
                    charSequence = this.mBuilder.f4911B.getCharSequence(NotificationCompat.EXTRA_TEXT);
                }
                if (charSequence == null) {
                    charSequence = m2450l();
                }
                builder.setContentText(charSequence);
                Person person2 = this.f4959e;
                if (person2 != null) {
                    if (person2.getIcon() != null) {
                        C0567c.m2463c(builder, this.f4959e.getIcon().toIcon(this.mBuilder.mContext));
                    }
                    C0569e.m2465a(builder, this.f4959e.toAndroidPerson());
                }
                C0566b.m2460b(builder, "call");
                return;
            }
            int i = this.f4958d;
            if (i == 1) {
                m2467a = C0570f.m2467a(this.f4959e.toAndroidPerson(), this.f4961g, this.f4960f);
            } else if (i == 2) {
                m2467a = C0570f.m2468b(this.f4959e.toAndroidPerson(), this.f4962h);
            } else if (i == 3) {
                m2467a = C0570f.m2469c(this.f4959e.toAndroidPerson(), this.f4962h, this.f4960f);
            } else if (Log.isLoggable(NotificationCompat.f4850a, 3)) {
                Log.d(NotificationCompat.f4850a, "Unrecognized call type in CallStyle: " + String.valueOf(this.f4958d));
            }
            if (m2467a != null) {
                m2467a.setBuilder(notificationBuilderWithBuilderAccessor.getBuilder());
                Integer num = this.f4964j;
                if (num != null) {
                    C0570f.m2470d(m2467a, num.intValue());
                }
                Integer num2 = this.f4965k;
                if (num2 != null) {
                    C0570f.m2472f(m2467a, num2.intValue());
                }
                C0570f.m2475i(m2467a, this.f4967m);
                IconCompat iconCompat = this.f4966l;
                if (iconCompat != null) {
                    C0570f.m2474h(m2467a, iconCompat.toIcon(this.mBuilder.mContext));
                }
                C0570f.m2473g(m2467a, this.f4963i);
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public boolean displayCustomViewInline() {
            return true;
        }

        @NonNull
        @RequiresApi(20)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public ArrayList<Action> getActionsListWithSystemActions() {
            Action m2454p = m2454p();
            Action m2453o = m2453o();
            ArrayList<Action> arrayList = new ArrayList<>(3);
            arrayList.add(m2454p);
            ArrayList<Action> arrayList2 = this.mBuilder.mActions;
            int i = 2;
            if (arrayList2 != null) {
                for (Action action : arrayList2) {
                    if (action.isContextual()) {
                        arrayList.add(action);
                    } else if (!m2451m(action) && i > 1) {
                        arrayList.add(action);
                        i--;
                    }
                    if (m2453o != null && i == 1) {
                        arrayList.add(m2453o);
                        i--;
                    }
                }
            }
            if (m2453o != null && i >= 1) {
                arrayList.add(m2453o);
            }
            return arrayList;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public String getClassName() {
            return f4956n;
        }

        @Nullable
        /* renamed from: l */
        public final String m2450l() {
            int i = this.f4958d;
            if (i == 1) {
                return this.mBuilder.mContext.getResources().getString(C0512R.string.call_notification_incoming_text);
            }
            if (i == 2) {
                return this.mBuilder.mContext.getResources().getString(C0512R.string.call_notification_ongoing_text);
            }
            if (i != 3) {
                return null;
            }
            return this.mBuilder.mContext.getResources().getString(C0512R.string.call_notification_screening_text);
        }

        /* renamed from: m */
        public final boolean m2451m(Action action) {
            return action != null && action.getExtras().getBoolean(f4957o);
        }

        @NonNull
        @RequiresApi(20)
        /* renamed from: n */
        public final Action m2452n(int i, int i2, Integer num, int i3, PendingIntent pendingIntent) {
            if (num == null) {
                num = Integer.valueOf(ContextCompat.getColor(this.mBuilder.mContext, i3));
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) this.mBuilder.mContext.getResources().getString(i2));
            spannableStringBuilder.setSpan(new ForegroundColorSpan(num.intValue()), 0, spannableStringBuilder.length(), 18);
            Action build = new Action.Builder(IconCompat.createWithResource(this.mBuilder.mContext, i), spannableStringBuilder, pendingIntent).build();
            build.getExtras().putBoolean(f4957o, true);
            return build;
        }

        @Nullable
        @RequiresApi(20)
        /* renamed from: o */
        public final Action m2453o() {
            int i = C0512R.drawable.ic_call_answer_video;
            int i2 = C0512R.drawable.ic_call_answer;
            PendingIntent pendingIntent = this.f4960f;
            if (pendingIntent == null) {
                return null;
            }
            boolean z = this.f4963i;
            return m2452n(z ? i : i2, z ? C0512R.string.call_notification_answer_video_action : C0512R.string.call_notification_answer_action, this.f4964j, C0512R.color.call_notification_answer_color, pendingIntent);
        }

        @NonNull
        @RequiresApi(20)
        /* renamed from: p */
        public final Action m2454p() {
            int i = C0512R.drawable.ic_call_decline;
            PendingIntent pendingIntent = this.f4961g;
            return pendingIntent == null ? m2452n(i, C0512R.string.call_notification_hang_up_action, this.f4965k, C0512R.color.call_notification_decline_color, this.f4962h) : m2452n(i, C0512R.string.call_notification_decline_action, this.f4965k, C0512R.color.call_notification_decline_color, pendingIntent);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void restoreFromCompatExtras(@NonNull Bundle bundle) {
            super.restoreFromCompatExtras(bundle);
            this.f4958d = bundle.getInt(NotificationCompat.EXTRA_CALL_TYPE);
            this.f4963i = bundle.getBoolean(NotificationCompat.EXTRA_CALL_IS_VIDEO);
            if (bundle.containsKey(NotificationCompat.EXTRA_CALL_PERSON)) {
                this.f4959e = Person.fromAndroidPerson((android.app.Person) bundle.getParcelable(NotificationCompat.EXTRA_CALL_PERSON));
            } else if (bundle.containsKey(NotificationCompat.EXTRA_CALL_PERSON_COMPAT)) {
                this.f4959e = Person.fromBundle(bundle.getBundle(NotificationCompat.EXTRA_CALL_PERSON_COMPAT));
            }
            if (bundle.containsKey(NotificationCompat.EXTRA_VERIFICATION_ICON)) {
                this.f4966l = IconCompat.createFromIcon((Icon) bundle.getParcelable(NotificationCompat.EXTRA_VERIFICATION_ICON));
            } else if (bundle.containsKey(NotificationCompat.EXTRA_VERIFICATION_ICON_COMPAT)) {
                this.f4966l = IconCompat.createFromBundle(bundle.getBundle(NotificationCompat.EXTRA_VERIFICATION_ICON_COMPAT));
            }
            this.f4967m = bundle.getCharSequence(NotificationCompat.EXTRA_VERIFICATION_TEXT);
            this.f4960f = (PendingIntent) bundle.getParcelable(NotificationCompat.EXTRA_ANSWER_INTENT);
            this.f4961g = (PendingIntent) bundle.getParcelable(NotificationCompat.EXTRA_DECLINE_INTENT);
            this.f4962h = (PendingIntent) bundle.getParcelable(NotificationCompat.EXTRA_HANG_UP_INTENT);
            this.f4964j = bundle.containsKey(NotificationCompat.EXTRA_ANSWER_COLOR) ? Integer.valueOf(bundle.getInt(NotificationCompat.EXTRA_ANSWER_COLOR)) : null;
            this.f4965k = bundle.containsKey(NotificationCompat.EXTRA_DECLINE_COLOR) ? Integer.valueOf(bundle.getInt(NotificationCompat.EXTRA_DECLINE_COLOR)) : null;
        }

        @NonNull
        public CallStyle setAnswerButtonColorHint(@ColorInt int i) {
            this.f4964j = Integer.valueOf(i);
            return this;
        }

        @NonNull
        public CallStyle setDeclineButtonColorHint(@ColorInt int i) {
            this.f4965k = Integer.valueOf(i);
            return this;
        }

        @NonNull
        public CallStyle setIsVideo(boolean z) {
            this.f4963i = z;
            return this;
        }

        @NonNull
        @RequiresApi(23)
        public CallStyle setVerificationIcon(@Nullable Icon icon) {
            this.f4966l = icon == null ? null : IconCompat.createFromIcon(icon);
            return this;
        }

        @NonNull
        public CallStyle setVerificationText(@Nullable CharSequence charSequence) {
            this.f4967m = charSequence;
            return this;
        }

        public CallStyle(@Nullable Builder builder) {
            setBuilder(builder);
        }

        @NonNull
        public CallStyle setVerificationIcon(@Nullable Bitmap bitmap) {
            this.f4966l = IconCompat.createWithBitmap(bitmap);
            return this;
        }

        public CallStyle(int i, @NonNull Person person, @Nullable PendingIntent pendingIntent, @Nullable PendingIntent pendingIntent2, @Nullable PendingIntent pendingIntent3) {
            if (person != null && !TextUtils.isEmpty(person.getName())) {
                this.f4958d = i;
                this.f4959e = person;
                this.f4960f = pendingIntent3;
                this.f4961g = pendingIntent2;
                this.f4962h = pendingIntent;
                return;
            }
            throw new IllegalArgumentException("person must have a non-empty a name");
        }
    }

    /* loaded from: classes3.dex */
    public static class DecoratedCustomViewStyle extends Style {

        /* renamed from: d */
        public static final String f4996d = "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle";

        /* renamed from: e */
        public static final int f4997e = 3;

        @RequiresApi(24)
        /* renamed from: androidx.core.app.NotificationCompat$DecoratedCustomViewStyle$a */
        /* loaded from: classes3.dex */
        public static class C0573a {
            private C0573a() {
            }

            @DoNotInline
            /* renamed from: a */
            public static Notification.Style m2494a() {
                return new Notification.DecoratedCustomViewStyle();
            }
        }

        /* renamed from: n */
        public static List<Action> m2491n(List<Action> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Action action : list) {
                if (!action.isContextual()) {
                    arrayList.add(action);
                }
            }
            return arrayList;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            notificationBuilderWithBuilderAccessor.getBuilder().setStyle(C0573a.m2494a());
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public boolean displayCustomViewInline() {
            return true;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public String getClassName() {
            return f4996d;
        }

        /* renamed from: l */
        public final RemoteViews m2492l(RemoteViews remoteViews, boolean z) {
            int min;
            boolean z2 = true;
            RemoteViews applyStandardTemplate = applyStandardTemplate(true, C0512R.layout.notification_template_custom_big, false);
            applyStandardTemplate.removeAllViews(C0512R.id.actions);
            List<Action> m2491n = m2491n(this.mBuilder.mActions);
            if (!z || m2491n == null || (min = Math.min(m2491n.size(), 3)) <= 0) {
                z2 = false;
            } else {
                for (int i = 0; i < min; i++) {
                    applyStandardTemplate.addView(C0512R.id.actions, m2493m(m2491n.get(i)));
                }
            }
            int i2 = z2 ? 0 : 8;
            applyStandardTemplate.setViewVisibility(C0512R.id.actions, i2);
            applyStandardTemplate.setViewVisibility(C0512R.id.action_divider, i2);
            buildIntoRemoteViews(applyStandardTemplate, remoteViews);
            return applyStandardTemplate;
        }

        /* renamed from: m */
        public final RemoteViews m2493m(Action action) {
            boolean z = action.actionIntent == null;
            RemoteViews remoteViews = new RemoteViews(this.mBuilder.mContext.getPackageName(), z ? C0512R.layout.notification_action_tombstone : C0512R.layout.notification_action);
            IconCompat iconCompat = action.getIconCompat();
            if (iconCompat != null) {
                remoteViews.setImageViewBitmap(C0512R.id.action_image, m2521h(iconCompat, C0512R.color.notification_action_color_filter));
            }
            remoteViews.setTextViewText(C0512R.id.action_text, action.title);
            if (!z) {
                remoteViews.setOnClickPendingIntent(C0512R.id.action_container, action.actionIntent);
            }
            remoteViews.setContentDescription(C0512R.id.action_container, action.title);
            return remoteViews;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews makeHeadsUpContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }
    }

    /* loaded from: classes3.dex */
    public interface Extender {
        @NonNull
        Builder extend(@NonNull Builder builder);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface GroupAlertBehavior {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface NotificationVisibility {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface ServiceNotificationBehavior {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface StreamType {
    }

    /* loaded from: classes3.dex */
    public static abstract class Style {

        /* renamed from: a */
        public CharSequence f5020a;

        /* renamed from: b */
        public CharSequence f5021b;

        /* renamed from: c */
        public boolean f5022c = false;

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        protected Builder mBuilder;

        @RequiresApi(24)
        /* renamed from: androidx.core.app.NotificationCompat$Style$a */
        /* loaded from: classes3.dex */
        public static class C0579a {
            private C0579a() {
            }

            @DoNotInline
            /* renamed from: a */
            public static void m2525a(RemoteViews remoteViews, int i, boolean z) {
                remoteViews.setChronometerCountDown(i, z);
            }
        }

        /* renamed from: b */
        public static float m2514b(float f, float f2, float f3) {
            return f < f2 ? f2 : f > f3 ? f3 : f;
        }

        @Nullable
        /* renamed from: c */
        public static Style m2515c(@Nullable String str) {
            if (str == null) {
                return null;
            }
            char c = 65535;
            switch (str.hashCode()) {
                case -716705180:
                    if (str.equals(DecoratedCustomViewStyle.f4996d)) {
                        c = 0;
                        break;
                    }
                    break;
                case -171946061:
                    if (str.equals(BigPictureStyle.f4885i)) {
                        c = 1;
                        break;
                    }
                    break;
                case 714386739:
                    if (str.equals(CallStyle.f4956n)) {
                        c = 2;
                        break;
                    }
                    break;
                case 912942987:
                    if (str.equals(InboxStyle.f4998e)) {
                        c = 3;
                        break;
                    }
                    break;
                case 919595044:
                    if (str.equals(BigTextStyle.f4891e)) {
                        c = 4;
                        break;
                    }
                    break;
                case 2090799565:
                    if (str.equals(MessagingStyle.f5000i)) {
                        c = 5;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    return new DecoratedCustomViewStyle();
                case 1:
                    return new BigPictureStyle();
                case 2:
                    return new CallStyle();
                case 3:
                    return new InboxStyle();
                case 4:
                    return new BigTextStyle();
                case 5:
                    return new MessagingStyle();
                default:
                    return null;
            }
        }

        @Nullable
        /* renamed from: d */
        public static Style m2516d(@Nullable String str) {
            if (str == null) {
                return null;
            }
            if (str.equals(Notification.BigPictureStyle.class.getName())) {
                return new BigPictureStyle();
            }
            if (str.equals(Notification.BigTextStyle.class.getName())) {
                return new BigTextStyle();
            }
            if (str.equals(Notification.InboxStyle.class.getName())) {
                return new InboxStyle();
            }
            if (str.equals(Notification.MessagingStyle.class.getName())) {
                return new MessagingStyle();
            }
            if (str.equals(Notification.DecoratedCustomViewStyle.class.getName())) {
                return new DecoratedCustomViewStyle();
            }
            return null;
        }

        @Nullable
        /* renamed from: e */
        public static Style m2517e(@NonNull Bundle bundle) {
            Style m2515c = m2515c(bundle.getString(NotificationCompat.EXTRA_COMPAT_TEMPLATE));
            return m2515c != null ? m2515c : (bundle.containsKey(NotificationCompat.EXTRA_SELF_DISPLAY_NAME) || bundle.containsKey(NotificationCompat.EXTRA_MESSAGING_STYLE_USER)) ? new MessagingStyle() : (bundle.containsKey(NotificationCompat.EXTRA_PICTURE) || bundle.containsKey(NotificationCompat.EXTRA_PICTURE_ICON)) ? new BigPictureStyle() : bundle.containsKey(NotificationCompat.EXTRA_BIG_TEXT) ? new BigTextStyle() : bundle.containsKey(NotificationCompat.EXTRA_TEXT_LINES) ? new InboxStyle() : bundle.containsKey(NotificationCompat.EXTRA_CALL_TYPE) ? new CallStyle() : m2516d(bundle.getString(NotificationCompat.EXTRA_TEMPLATE));
        }

        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public static Style extractStyleFromNotification(@NonNull Notification notification) {
            Bundle extras = NotificationCompat.getExtras(notification);
            if (extras == null) {
                return null;
            }
            return m2518f(extras);
        }

        @Nullable
        /* renamed from: f */
        public static Style m2518f(@NonNull Bundle bundle) {
            Style m2517e = m2517e(bundle);
            if (m2517e == null) {
                return null;
            }
            try {
                m2517e.restoreFromCompatExtras(bundle);
                return m2517e;
            } catch (ClassCastException unused) {
                return null;
            }
        }

        /* renamed from: a */
        public final int m2519a() {
            Resources resources = this.mBuilder.mContext.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(C0512R.dimen.notification_top_pad);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(C0512R.dimen.notification_top_pad_large_text);
            float m2514b = (m2514b(resources.getConfiguration().fontScale, 1.0f, 1.3f) - 1.0f) / 0.29999995f;
            return Math.round(((1.0f - m2514b) * dimensionPixelSize) + (m2514b * dimensionPixelSize2));
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void addCompatExtras(@NonNull Bundle bundle) {
            if (this.f5022c) {
                bundle.putCharSequence(NotificationCompat.EXTRA_SUMMARY_TEXT, this.f5021b);
            }
            CharSequence charSequence = this.f5020a;
            if (charSequence != null) {
                bundle.putCharSequence(NotificationCompat.EXTRA_TITLE_BIG, charSequence);
            }
            String className = getClassName();
            if (className != null) {
                bundle.putString(NotificationCompat.EXTRA_COMPAT_TEMPLATE, className);
            }
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0108  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0127  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x014b  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0198  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x01a3  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x019a  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0193  */
        @androidx.annotation.NonNull
        @androidx.annotation.RestrictTo({androidx.annotation.RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.widget.RemoteViews applyStandardTemplate(boolean r12, int r13, boolean r14) {
            /*
                Method dump skipped, instructions count: 424
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.NotificationCompat.Style.applyStandardTemplate(boolean, int, boolean):android.widget.RemoteViews");
        }

        @Nullable
        public Notification build() {
            Builder builder = this.mBuilder;
            if (builder != null) {
                return builder.build();
            }
            return null;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void buildIntoRemoteViews(RemoteViews remoteViews, RemoteViews remoteViews2) {
            m2524k(remoteViews);
            remoteViews.removeAllViews(C0512R.id.notification_main_column);
            remoteViews.addView(C0512R.id.notification_main_column, remoteViews2.clone());
            remoteViews.setViewVisibility(C0512R.id.notification_main_column, 0);
            remoteViews.setViewPadding(C0512R.id.notification_main_column_container, 0, m2519a(), 0, 0);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void clearCompatExtraKeys(@NonNull Bundle bundle) {
            bundle.remove(NotificationCompat.EXTRA_SUMMARY_TEXT);
            bundle.remove(NotificationCompat.EXTRA_TITLE_BIG);
            bundle.remove(NotificationCompat.EXTRA_COMPAT_TEMPLATE);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public Bitmap createColoredBitmap(int i, int i2) {
            return m2520g(i, i2, 0);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public boolean displayCustomViewInline() {
            return false;
        }

        /* renamed from: g */
        public final Bitmap m2520g(int i, int i2, int i3) {
            return m2522i(IconCompat.createWithResource(this.mBuilder.mContext, i), i2, i3);
        }

        @Nullable
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public String getClassName() {
            return null;
        }

        /* renamed from: h */
        public Bitmap m2521h(@NonNull IconCompat iconCompat, int i) {
            return m2522i(iconCompat, i, 0);
        }

        /* renamed from: i */
        public final Bitmap m2522i(@NonNull IconCompat iconCompat, int i, int i2) {
            Drawable loadDrawable = iconCompat.loadDrawable(this.mBuilder.mContext);
            int intrinsicWidth = i2 == 0 ? loadDrawable.getIntrinsicWidth() : i2;
            if (i2 == 0) {
                i2 = loadDrawable.getIntrinsicHeight();
            }
            Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, i2, Bitmap.Config.ARGB_8888);
            loadDrawable.setBounds(0, 0, intrinsicWidth, i2);
            if (i != 0) {
                loadDrawable.mutate().setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
            }
            loadDrawable.draw(new Canvas(createBitmap));
            return createBitmap;
        }

        /* renamed from: j */
        public final Bitmap m2523j(int i, int i2, int i3, int i4) {
            int i5 = C0512R.drawable.notification_icon_background;
            if (i4 == 0) {
                i4 = 0;
            }
            Bitmap m2520g = m2520g(i5, i4, i2);
            Canvas canvas = new Canvas(m2520g);
            Drawable mutate = this.mBuilder.mContext.getResources().getDrawable(i).mutate();
            mutate.setFilterBitmap(true);
            int i6 = (i2 - i3) / 2;
            int i7 = i3 + i6;
            mutate.setBounds(i6, i6, i7, i7);
            mutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP));
            mutate.draw(canvas);
            return m2520g;
        }

        /* renamed from: k */
        public final void m2524k(RemoteViews remoteViews) {
            remoteViews.setViewVisibility(C0512R.id.title, 8);
            remoteViews.setViewVisibility(C0512R.id.text2, 8);
            remoteViews.setViewVisibility(C0512R.id.text, 8);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public RemoteViews makeHeadsUpContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void restoreFromCompatExtras(@NonNull Bundle bundle) {
            if (bundle.containsKey(NotificationCompat.EXTRA_SUMMARY_TEXT)) {
                this.f5021b = bundle.getCharSequence(NotificationCompat.EXTRA_SUMMARY_TEXT);
                this.f5022c = true;
            }
            this.f5020a = bundle.getCharSequence(NotificationCompat.EXTRA_TITLE_BIG);
        }

        public void setBuilder(@Nullable Builder builder) {
            if (this.mBuilder != builder) {
                this.mBuilder = builder;
                if (builder != null) {
                    builder.setStyle(this);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class WearableExtender implements Extender {

        /* renamed from: A */
        public static final String f5036A = "hintScreenTimeout";

        /* renamed from: B */
        public static final String f5037B = "dismissalId";

        /* renamed from: C */
        public static final String f5038C = "bridgeTag";

        /* renamed from: D */
        public static final int f5039D = 1;

        /* renamed from: E */
        public static final int f5040E = 2;

        /* renamed from: F */
        public static final int f5041F = 4;

        /* renamed from: G */
        public static final int f5042G = 8;

        /* renamed from: H */
        public static final int f5043H = 16;

        /* renamed from: I */
        public static final int f5044I = 32;

        /* renamed from: J */
        public static final int f5045J = 64;

        /* renamed from: K */
        public static final int f5046K = 1;

        /* renamed from: L */
        public static final int f5047L = 8388613;

        /* renamed from: M */
        public static final int f5048M = 80;

        @Deprecated
        public static final int SCREEN_TIMEOUT_LONG = -1;

        @Deprecated
        public static final int SCREEN_TIMEOUT_SHORT = 0;

        @Deprecated
        public static final int SIZE_DEFAULT = 0;

        @Deprecated
        public static final int SIZE_FULL_SCREEN = 5;

        @Deprecated
        public static final int SIZE_LARGE = 4;

        @Deprecated
        public static final int SIZE_MEDIUM = 3;

        @Deprecated
        public static final int SIZE_SMALL = 2;

        @Deprecated
        public static final int SIZE_XSMALL = 1;
        public static final int UNSET_ACTION_INDEX = -1;

        /* renamed from: o */
        public static final String f5049o = "android.wearable.EXTENSIONS";

        /* renamed from: p */
        public static final String f5050p = "actions";

        /* renamed from: q */
        public static final String f5051q = "flags";

        /* renamed from: r */
        public static final String f5052r = "displayIntent";

        /* renamed from: s */
        public static final String f5053s = "pages";

        /* renamed from: t */
        public static final String f5054t = "background";

        /* renamed from: u */
        public static final String f5055u = "contentIcon";

        /* renamed from: v */
        public static final String f5056v = "contentIconGravity";

        /* renamed from: w */
        public static final String f5057w = "contentActionIndex";

        /* renamed from: x */
        public static final String f5058x = "customSizePreset";

        /* renamed from: y */
        public static final String f5059y = "customContentHeight";

        /* renamed from: z */
        public static final String f5060z = "gravity";

        /* renamed from: a */
        public ArrayList<Action> f5061a;

        /* renamed from: b */
        public int f5062b;

        /* renamed from: c */
        public PendingIntent f5063c;

        /* renamed from: d */
        public ArrayList<Notification> f5064d;

        /* renamed from: e */
        public Bitmap f5065e;

        /* renamed from: f */
        public int f5066f;

        /* renamed from: g */
        public int f5067g;

        /* renamed from: h */
        public int f5068h;

        /* renamed from: i */
        public int f5069i;

        /* renamed from: j */
        public int f5070j;

        /* renamed from: k */
        public int f5071k;

        /* renamed from: l */
        public int f5072l;

        /* renamed from: m */
        public String f5073m;

        /* renamed from: n */
        public String f5074n;

        @RequiresApi(20)
        /* renamed from: androidx.core.app.NotificationCompat$WearableExtender$a */
        /* loaded from: classes3.dex */
        public static class C0580a {
            private C0580a() {
            }

            @DoNotInline
            /* renamed from: a */
            public static Notification.Action.Builder m2528a(Notification.Action.Builder builder, Bundle bundle) {
                return builder.addExtras(bundle);
            }

            @DoNotInline
            /* renamed from: b */
            public static Notification.Action.Builder m2529b(Notification.Action.Builder builder, android.app.RemoteInput remoteInput) {
                return builder.addRemoteInput(remoteInput);
            }

            @DoNotInline
            /* renamed from: c */
            public static Notification.Action m2530c(Notification.Action.Builder builder) {
                return builder.build();
            }

            @DoNotInline
            /* renamed from: d */
            public static Notification.Action.Builder m2531d(int i, CharSequence charSequence, PendingIntent pendingIntent) {
                return new Notification.Action.Builder(i, charSequence, pendingIntent);
            }

            @DoNotInline
            /* renamed from: e */
            public static Action m2532e(ArrayList<Parcelable> arrayList, int i) {
                return NotificationCompat.m2414a((Notification.Action) arrayList.get(i));
            }
        }

        @RequiresApi(23)
        /* renamed from: androidx.core.app.NotificationCompat$WearableExtender$b */
        /* loaded from: classes3.dex */
        public static class C0581b {
            private C0581b() {
            }

            @DoNotInline
            /* renamed from: a */
            public static Notification.Action.Builder m2533a(Icon icon, CharSequence charSequence, PendingIntent pendingIntent) {
                return new Notification.Action.Builder(icon, charSequence, pendingIntent);
            }
        }

        @RequiresApi(24)
        /* renamed from: androidx.core.app.NotificationCompat$WearableExtender$c */
        /* loaded from: classes3.dex */
        public static class C0582c {
            private C0582c() {
            }

            @DoNotInline
            /* renamed from: a */
            public static Notification.Action.Builder m2534a(Notification.Action.Builder builder, boolean z) {
                return builder.setAllowGeneratedReplies(z);
            }
        }

        @RequiresApi(31)
        /* renamed from: androidx.core.app.NotificationCompat$WearableExtender$d */
        /* loaded from: classes3.dex */
        public static class C0583d {
            private C0583d() {
            }

            @DoNotInline
            /* renamed from: a */
            public static Notification.Action.Builder m2535a(Notification.Action.Builder builder, boolean z) {
                return builder.setAuthenticationRequired(z);
            }
        }

        public WearableExtender() {
            this.f5061a = new ArrayList<>();
            this.f5062b = 1;
            this.f5064d = new ArrayList<>();
            this.f5067g = 8388613;
            this.f5068h = -1;
            this.f5069i = 0;
            this.f5071k = 80;
        }

        @RequiresApi(20)
        /* renamed from: a */
        public static Notification.Action m2526a(Action action) {
            int i = Build.VERSION.SDK_INT;
            IconCompat iconCompat = action.getIconCompat();
            Notification.Action.Builder m2533a = C0581b.m2533a(iconCompat == null ? null : iconCompat.toIcon(), action.getTitle(), action.getActionIntent());
            Bundle bundle = action.getExtras() != null ? new Bundle(action.getExtras()) : new Bundle();
            bundle.putBoolean(C0619b.f5191c, action.getAllowGeneratedReplies());
            C0582c.m2534a(m2533a, action.getAllowGeneratedReplies());
            if (i >= 31) {
                C0583d.m2535a(m2533a, action.isAuthenticationRequired());
            }
            C0580a.m2528a(m2533a, bundle);
            RemoteInput[] remoteInputs = action.getRemoteInputs();
            if (remoteInputs != null) {
                for (android.app.RemoteInput remoteInput : RemoteInput.m2614b(remoteInputs)) {
                    C0580a.m2529b(m2533a, remoteInput);
                }
            }
            return C0580a.m2530c(m2533a);
        }

        @NonNull
        public WearableExtender addAction(@NonNull Action action) {
            this.f5061a.add(action);
            return this;
        }

        @NonNull
        public WearableExtender addActions(@NonNull List<Action> list) {
            this.f5061a.addAll(list);
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender addPage(@NonNull Notification notification) {
            this.f5064d.add(notification);
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender addPages(@NonNull List<Notification> list) {
            this.f5064d.addAll(list);
            return this;
        }

        /* renamed from: b */
        public final void m2527b(int i, boolean z) {
            if (z) {
                this.f5062b = i | this.f5062b;
            } else {
                this.f5062b = (~i) & this.f5062b;
            }
        }

        @NonNull
        public WearableExtender clearActions() {
            this.f5061a.clear();
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender clearPages() {
            this.f5064d.clear();
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Extender
        @NonNull
        public Builder extend(@NonNull Builder builder) {
            Bundle bundle = new Bundle();
            if (!this.f5061a.isEmpty()) {
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.f5061a.size());
                Iterator<Action> it2 = this.f5061a.iterator();
                while (it2.hasNext()) {
                    arrayList.add(m2526a(it2.next()));
                }
                bundle.putParcelableArrayList(f5050p, arrayList);
            }
            int i = this.f5062b;
            if (i != 1) {
                bundle.putInt("flags", i);
            }
            PendingIntent pendingIntent = this.f5063c;
            if (pendingIntent != null) {
                bundle.putParcelable(f5052r, pendingIntent);
            }
            if (!this.f5064d.isEmpty()) {
                ArrayList<Notification> arrayList2 = this.f5064d;
                bundle.putParcelableArray(f5053s, (Parcelable[]) arrayList2.toArray(new Notification[arrayList2.size()]));
            }
            Bitmap bitmap = this.f5065e;
            if (bitmap != null) {
                bundle.putParcelable(f5054t, bitmap);
            }
            int i2 = this.f5066f;
            if (i2 != 0) {
                bundle.putInt(f5055u, i2);
            }
            int i3 = this.f5067g;
            if (i3 != 8388613) {
                bundle.putInt(f5056v, i3);
            }
            int i4 = this.f5068h;
            if (i4 != -1) {
                bundle.putInt(f5057w, i4);
            }
            int i5 = this.f5069i;
            if (i5 != 0) {
                bundle.putInt(f5058x, i5);
            }
            int i6 = this.f5070j;
            if (i6 != 0) {
                bundle.putInt(f5059y, i6);
            }
            int i7 = this.f5071k;
            if (i7 != 80) {
                bundle.putInt(f5060z, i7);
            }
            int i8 = this.f5072l;
            if (i8 != 0) {
                bundle.putInt(f5036A, i8);
            }
            String str = this.f5073m;
            if (str != null) {
                bundle.putString(f5037B, str);
            }
            String str2 = this.f5074n;
            if (str2 != null) {
                bundle.putString(f5038C, str2);
            }
            builder.getExtras().putBundle("android.wearable.EXTENSIONS", bundle);
            return builder;
        }

        @NonNull
        public List<Action> getActions() {
            return this.f5061a;
        }

        @Nullable
        @Deprecated
        public Bitmap getBackground() {
            return this.f5065e;
        }

        @Nullable
        public String getBridgeTag() {
            return this.f5074n;
        }

        public int getContentAction() {
            return this.f5068h;
        }

        @Deprecated
        public int getContentIcon() {
            return this.f5066f;
        }

        @Deprecated
        public int getContentIconGravity() {
            return this.f5067g;
        }

        public boolean getContentIntentAvailableOffline() {
            return (this.f5062b & 1) != 0;
        }

        @Deprecated
        public int getCustomContentHeight() {
            return this.f5070j;
        }

        @Deprecated
        public int getCustomSizePreset() {
            return this.f5069i;
        }

        @Nullable
        public String getDismissalId() {
            return this.f5073m;
        }

        @Nullable
        @Deprecated
        public PendingIntent getDisplayIntent() {
            return this.f5063c;
        }

        @Deprecated
        public int getGravity() {
            return this.f5071k;
        }

        @Deprecated
        public boolean getHintAmbientBigPicture() {
            return (this.f5062b & 32) != 0;
        }

        @Deprecated
        public boolean getHintAvoidBackgroundClipping() {
            return (this.f5062b & 16) != 0;
        }

        public boolean getHintContentIntentLaunchesActivity() {
            return (this.f5062b & 64) != 0;
        }

        @Deprecated
        public boolean getHintHideIcon() {
            return (this.f5062b & 2) != 0;
        }

        @Deprecated
        public int getHintScreenTimeout() {
            return this.f5072l;
        }

        @Deprecated
        public boolean getHintShowBackgroundOnly() {
            return (this.f5062b & 4) != 0;
        }

        @NonNull
        @Deprecated
        public List<Notification> getPages() {
            return this.f5064d;
        }

        public boolean getStartScrollBottom() {
            return (this.f5062b & 8) != 0;
        }

        @NonNull
        @Deprecated
        public WearableExtender setBackground(@Nullable Bitmap bitmap) {
            this.f5065e = bitmap;
            return this;
        }

        @NonNull
        public WearableExtender setBridgeTag(@Nullable String str) {
            this.f5074n = str;
            return this;
        }

        @NonNull
        public WearableExtender setContentAction(int i) {
            this.f5068h = i;
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender setContentIcon(int i) {
            this.f5066f = i;
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender setContentIconGravity(int i) {
            this.f5067g = i;
            return this;
        }

        @NonNull
        public WearableExtender setContentIntentAvailableOffline(boolean z) {
            m2527b(1, z);
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender setCustomContentHeight(int i) {
            this.f5070j = i;
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender setCustomSizePreset(int i) {
            this.f5069i = i;
            return this;
        }

        @NonNull
        public WearableExtender setDismissalId(@Nullable String str) {
            this.f5073m = str;
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender setDisplayIntent(@Nullable PendingIntent pendingIntent) {
            this.f5063c = pendingIntent;
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender setGravity(int i) {
            this.f5071k = i;
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender setHintAmbientBigPicture(boolean z) {
            m2527b(32, z);
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender setHintAvoidBackgroundClipping(boolean z) {
            m2527b(16, z);
            return this;
        }

        @NonNull
        public WearableExtender setHintContentIntentLaunchesActivity(boolean z) {
            m2527b(64, z);
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender setHintHideIcon(boolean z) {
            m2527b(2, z);
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender setHintScreenTimeout(int i) {
            this.f5072l = i;
            return this;
        }

        @NonNull
        @Deprecated
        public WearableExtender setHintShowBackgroundOnly(boolean z) {
            m2527b(4, z);
            return this;
        }

        @NonNull
        public WearableExtender setStartScrollBottom(boolean z) {
            m2527b(8, z);
            return this;
        }

        @NonNull
        /* renamed from: clone, reason: merged with bridge method [inline-methods] */
        public WearableExtender m72121clone() {
            WearableExtender wearableExtender = new WearableExtender();
            wearableExtender.f5061a = new ArrayList<>(this.f5061a);
            wearableExtender.f5062b = this.f5062b;
            wearableExtender.f5063c = this.f5063c;
            wearableExtender.f5064d = new ArrayList<>(this.f5064d);
            wearableExtender.f5065e = this.f5065e;
            wearableExtender.f5066f = this.f5066f;
            wearableExtender.f5067g = this.f5067g;
            wearableExtender.f5068h = this.f5068h;
            wearableExtender.f5069i = this.f5069i;
            wearableExtender.f5070j = this.f5070j;
            wearableExtender.f5071k = this.f5071k;
            wearableExtender.f5072l = this.f5072l;
            wearableExtender.f5073m = this.f5073m;
            wearableExtender.f5074n = this.f5074n;
            return wearableExtender;
        }

        public WearableExtender(@NonNull Notification notification) {
            this.f5061a = new ArrayList<>();
            this.f5062b = 1;
            this.f5064d = new ArrayList<>();
            this.f5067g = 8388613;
            this.f5068h = -1;
            this.f5069i = 0;
            this.f5071k = 80;
            Bundle extras = NotificationCompat.getExtras(notification);
            Bundle bundle = extras != null ? extras.getBundle("android.wearable.EXTENSIONS") : null;
            if (bundle != null) {
                ArrayList parcelableArrayList = bundle.getParcelableArrayList(f5050p);
                if (parcelableArrayList != null) {
                    int size = parcelableArrayList.size();
                    Action[] actionArr = new Action[size];
                    for (int i = 0; i < size; i++) {
                        actionArr[i] = C0580a.m2532e(parcelableArrayList, i);
                    }
                    Collections.addAll(this.f5061a, actionArr);
                }
                this.f5062b = bundle.getInt("flags", 1);
                this.f5063c = (PendingIntent) bundle.getParcelable(f5052r);
                Notification[] m2416c = NotificationCompat.m2416c(bundle, f5053s);
                if (m2416c != null) {
                    Collections.addAll(this.f5064d, m2416c);
                }
                this.f5065e = (Bitmap) bundle.getParcelable(f5054t);
                this.f5066f = bundle.getInt(f5055u);
                this.f5067g = bundle.getInt(f5056v, 8388613);
                this.f5068h = bundle.getInt(f5057w, -1);
                this.f5069i = bundle.getInt(f5058x, 0);
                this.f5070j = bundle.getInt(f5059y);
                this.f5071k = bundle.getInt(f5060z, 80);
                this.f5072l = bundle.getInt(f5036A);
                this.f5073m = bundle.getString(f5037B);
                this.f5074n = bundle.getString(f5038C);
            }
        }
    }

    @RequiresApi(20)
    /* renamed from: androidx.core.app.NotificationCompat$b */
    /* loaded from: classes3.dex */
    public static class C0585b {
        @DoNotInline
        /* renamed from: a */
        public static boolean m2536a(android.app.RemoteInput remoteInput) {
            return remoteInput.getAllowFreeFormInput();
        }

        @DoNotInline
        /* renamed from: b */
        public static CharSequence[] m2537b(android.app.RemoteInput remoteInput) {
            return remoteInput.getChoices();
        }

        @DoNotInline
        /* renamed from: c */
        public static Bundle m2538c(Notification.Action action) {
            return action.getExtras();
        }

        @DoNotInline
        /* renamed from: d */
        public static Bundle m2539d(android.app.RemoteInput remoteInput) {
            return remoteInput.getExtras();
        }

        @DoNotInline
        /* renamed from: e */
        public static String m2540e(Notification notification) {
            return notification.getGroup();
        }

        @DoNotInline
        /* renamed from: f */
        public static CharSequence m2541f(android.app.RemoteInput remoteInput) {
            return remoteInput.getLabel();
        }

        @DoNotInline
        /* renamed from: g */
        public static android.app.RemoteInput[] m2542g(Notification.Action action) {
            return action.getRemoteInputs();
        }

        @DoNotInline
        /* renamed from: h */
        public static String m2543h(android.app.RemoteInput remoteInput) {
            return remoteInput.getResultKey();
        }

        @DoNotInline
        /* renamed from: i */
        public static String m2544i(Notification notification) {
            return notification.getSortKey();
        }
    }

    @RequiresApi(23)
    /* renamed from: androidx.core.app.NotificationCompat$c */
    /* loaded from: classes3.dex */
    public static class C0586c {
        @DoNotInline
        /* renamed from: a */
        public static Icon m2545a(Notification.Action action) {
            return action.getIcon();
        }
    }

    @RequiresApi(24)
    /* renamed from: androidx.core.app.NotificationCompat$d */
    /* loaded from: classes3.dex */
    public static class C0587d {
        @DoNotInline
        /* renamed from: a */
        public static boolean m2546a(Notification.Action action) {
            return action.getAllowGeneratedReplies();
        }
    }

    @RequiresApi(26)
    /* renamed from: androidx.core.app.NotificationCompat$e */
    /* loaded from: classes3.dex */
    public static class C0588e {
        @DoNotInline
        /* renamed from: a */
        public static int m2547a(Notification notification) {
            return notification.getBadgeIconType();
        }

        @DoNotInline
        /* renamed from: b */
        public static String m2548b(Notification notification) {
            return notification.getChannelId();
        }

        @DoNotInline
        /* renamed from: c */
        public static int m2549c(Notification notification) {
            return notification.getGroupAlertBehavior();
        }

        @DoNotInline
        /* renamed from: d */
        public static CharSequence m2550d(Notification notification) {
            return notification.getSettingsText();
        }

        @DoNotInline
        /* renamed from: e */
        public static String m2551e(Notification notification) {
            return notification.getShortcutId();
        }

        @DoNotInline
        /* renamed from: f */
        public static long m2552f(Notification notification) {
            return notification.getTimeoutAfter();
        }
    }

    @RequiresApi(28)
    /* renamed from: androidx.core.app.NotificationCompat$f */
    /* loaded from: classes3.dex */
    public static class C0589f {
        @DoNotInline
        /* renamed from: a */
        public static int m2553a(Notification.Action action) {
            return action.getSemanticAction();
        }
    }

    @RequiresApi(29)
    /* renamed from: androidx.core.app.NotificationCompat$g */
    /* loaded from: classes3.dex */
    public static class C0590g {
        @DoNotInline
        /* renamed from: a */
        public static boolean m2554a(Notification notification) {
            return notification.getAllowSystemGeneratedContextualActions();
        }

        @DoNotInline
        /* renamed from: b */
        public static Notification.BubbleMetadata m2555b(Notification notification) {
            return notification.getBubbleMetadata();
        }

        @DoNotInline
        /* renamed from: c */
        public static int m2556c(android.app.RemoteInput remoteInput) {
            return remoteInput.getEditChoicesBeforeSending();
        }

        @DoNotInline
        /* renamed from: d */
        public static LocusId m2557d(Notification notification) {
            return notification.getLocusId();
        }

        @DoNotInline
        /* renamed from: e */
        public static boolean m2558e(Notification.Action action) {
            return action.isContextual();
        }
    }

    @RequiresApi(31)
    /* renamed from: androidx.core.app.NotificationCompat$h */
    /* loaded from: classes3.dex */
    public static class C0591h {
        @DoNotInline
        /* renamed from: a */
        public static boolean m2559a(Notification.Action action) {
            return action.isAuthenticationRequired();
        }
    }

    @Deprecated
    public NotificationCompat() {
    }

    @NonNull
    @RequiresApi(20)
    /* renamed from: a */
    public static Action m2414a(@NonNull Notification.Action action) {
        RemoteInput[] remoteInputArr;
        int i;
        android.app.RemoteInput[] m2542g = C0585b.m2542g(action);
        if (m2542g == null) {
            remoteInputArr = null;
        } else {
            RemoteInput[] remoteInputArr2 = new RemoteInput[m2542g.length];
            for (int i2 = 0; i2 < m2542g.length; i2++) {
                android.app.RemoteInput remoteInput = m2542g[i2];
                remoteInputArr2[i2] = new RemoteInput(C0585b.m2543h(remoteInput), C0585b.m2541f(remoteInput), C0585b.m2537b(remoteInput), C0585b.m2536a(remoteInput), C0590g.m2556c(remoteInput), C0585b.m2539d(remoteInput), null);
            }
            remoteInputArr = remoteInputArr2;
        }
        int i3 = Build.VERSION.SDK_INT;
        boolean z = C0585b.m2538c(action).getBoolean(C0619b.f5191c) || C0587d.m2546a(action);
        boolean z2 = C0585b.m2538c(action).getBoolean(Action.f4851j, true);
        int m2553a = C0589f.m2553a(action);
        boolean m2558e = C0590g.m2558e(action);
        boolean m2559a = i3 >= 31 ? C0591h.m2559a(action) : false;
        if (C0586c.m2545a(action) != null || (i = action.icon) == 0) {
            return new Action(C0586c.m2545a(action) != null ? IconCompat.createFromIconOrNullIfZeroResId(C0586c.m2545a(action)) : null, action.title, action.actionIntent, C0585b.m2538c(action), remoteInputArr, (RemoteInput[]) null, z, m2553a, z2, m2558e, m2559a);
        }
        return new Action(i, action.title, action.actionIntent, C0585b.m2538c(action), remoteInputArr, (RemoteInput[]) null, z, m2553a, z2, m2558e, m2559a);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* renamed from: b */
    public static boolean m2415b(@NonNull Notification notification) {
        return (notification.flags & 128) != 0;
    }

    @NonNull
    /* renamed from: c */
    public static Notification[] m2416c(@NonNull Bundle bundle, @NonNull String str) {
        Parcelable[] parcelableArray = bundle.getParcelableArray(str);
        if ((parcelableArray instanceof Notification[]) || parcelableArray == null) {
            return (Notification[]) parcelableArray;
        }
        Notification[] notificationArr = new Notification[parcelableArray.length];
        for (int i = 0; i < parcelableArray.length; i++) {
            notificationArr[i] = (Notification) parcelableArray[i];
        }
        bundle.putParcelableArray(str, notificationArr);
        return notificationArr;
    }

    @Nullable
    public static Action getAction(@NonNull Notification notification, int i) {
        return m2414a(notification.actions[i]);
    }

    public static int getActionCount(@NonNull Notification notification) {
        Notification.Action[] actionArr = notification.actions;
        if (actionArr != null) {
            return actionArr.length;
        }
        return 0;
    }

    public static boolean getAllowSystemGeneratedContextualActions(@NonNull Notification notification) {
        return C0590g.m2554a(notification);
    }

    public static boolean getAutoCancel(@NonNull Notification notification) {
        return (notification.flags & 16) != 0;
    }

    public static int getBadgeIconType(@NonNull Notification notification) {
        return C0588e.m2547a(notification);
    }

    @Nullable
    public static BubbleMetadata getBubbleMetadata(@NonNull Notification notification) {
        return BubbleMetadata.fromPlatform(C0590g.m2555b(notification));
    }

    @Nullable
    public static String getCategory(@NonNull Notification notification) {
        return notification.category;
    }

    @Nullable
    public static String getChannelId(@NonNull Notification notification) {
        return C0588e.m2548b(notification);
    }

    public static int getColor(@NonNull Notification notification) {
        return notification.color;
    }

    @Nullable
    public static CharSequence getContentInfo(@NonNull Notification notification) {
        return notification.extras.getCharSequence(EXTRA_INFO_TEXT);
    }

    @Nullable
    public static CharSequence getContentText(@NonNull Notification notification) {
        return notification.extras.getCharSequence(EXTRA_TEXT);
    }

    @Nullable
    public static CharSequence getContentTitle(@NonNull Notification notification) {
        return notification.extras.getCharSequence(EXTRA_TITLE);
    }

    @Nullable
    public static Bundle getExtras(@NonNull Notification notification) {
        return notification.extras;
    }

    @Nullable
    public static String getGroup(@NonNull Notification notification) {
        return C0585b.m2540e(notification);
    }

    public static int getGroupAlertBehavior(@NonNull Notification notification) {
        return C0588e.m2549c(notification);
    }

    @NonNull
    @RequiresApi(21)
    public static List<Action> getInvisibleActions(@NonNull Notification notification) {
        Bundle bundle;
        ArrayList arrayList = new ArrayList();
        Bundle bundle2 = notification.extras.getBundle(CarExtender.f4968d);
        if (bundle2 != null && (bundle = bundle2.getBundle(CarExtender.f4972h)) != null) {
            for (int i = 0; i < bundle.size(); i++) {
                arrayList.add(C0619b.m2692g(bundle.getBundle(Integer.toString(i))));
            }
        }
        return arrayList;
    }

    public static boolean getLocalOnly(@NonNull Notification notification) {
        return (notification.flags & 256) != 0;
    }

    @Nullable
    public static LocusIdCompat getLocusId(@NonNull Notification notification) {
        LocusId m2557d = C0590g.m2557d(notification);
        if (m2557d == null) {
            return null;
        }
        return LocusIdCompat.toLocusIdCompat(m2557d);
    }

    public static boolean getOngoing(@NonNull Notification notification) {
        return (notification.flags & 2) != 0;
    }

    public static boolean getOnlyAlertOnce(@NonNull Notification notification) {
        return (notification.flags & 8) != 0;
    }

    @NonNull
    public static List<Person> getPeople(@NonNull Notification notification) {
        ArrayList arrayList = new ArrayList();
        ArrayList parcelableArrayList = notification.extras.getParcelableArrayList(EXTRA_PEOPLE_LIST);
        if (parcelableArrayList != null && !parcelableArrayList.isEmpty()) {
            Iterator it2 = parcelableArrayList.iterator();
            while (it2.hasNext()) {
                arrayList.add(Person.fromAndroidPerson((android.app.Person) it2.next()));
            }
        }
        return arrayList;
    }

    @Nullable
    public static Notification getPublicVersion(@NonNull Notification notification) {
        return notification.publicVersion;
    }

    @Nullable
    public static CharSequence getSettingsText(@NonNull Notification notification) {
        return C0588e.m2550d(notification);
    }

    @Nullable
    public static String getShortcutId(@NonNull Notification notification) {
        return C0588e.m2551e(notification);
    }

    public static boolean getShowWhen(@NonNull Notification notification) {
        return notification.extras.getBoolean(EXTRA_SHOW_WHEN);
    }

    @Nullable
    public static String getSortKey(@NonNull Notification notification) {
        return C0585b.m2544i(notification);
    }

    @Nullable
    public static CharSequence getSubText(@NonNull Notification notification) {
        return notification.extras.getCharSequence(EXTRA_SUB_TEXT);
    }

    public static long getTimeoutAfter(@NonNull Notification notification) {
        return C0588e.m2552f(notification);
    }

    public static boolean getUsesChronometer(@NonNull Notification notification) {
        return notification.extras.getBoolean(EXTRA_SHOW_CHRONOMETER);
    }

    public static int getVisibility(@NonNull Notification notification) {
        return notification.visibility;
    }

    public static boolean isGroupSummary(@NonNull Notification notification) {
        return (notification.flags & 512) != 0;
    }

    @Nullable
    public static Bitmap reduceLargeIconSize(@NonNull Context context, @Nullable Bitmap bitmap) {
        return bitmap;
    }

    /* loaded from: classes3.dex */
    public static final class CarExtender implements Extender {

        /* renamed from: d */
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public static final String f4968d = "android.car.EXTENSIONS";

        /* renamed from: e */
        public static final String f4969e = "large_icon";

        /* renamed from: f */
        public static final String f4970f = "car_conversation";

        /* renamed from: g */
        public static final String f4971g = "app_color";

        /* renamed from: h */
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public static final String f4972h = "invisible_actions";

        /* renamed from: i */
        public static final String f4973i = "author";

        /* renamed from: j */
        public static final String f4974j = "text";

        /* renamed from: k */
        public static final String f4975k = "messages";

        /* renamed from: l */
        public static final String f4976l = "remote_input";

        /* renamed from: m */
        public static final String f4977m = "on_reply";

        /* renamed from: n */
        public static final String f4978n = "on_read";

        /* renamed from: o */
        public static final String f4979o = "participants";

        /* renamed from: p */
        public static final String f4980p = "timestamp";

        /* renamed from: a */
        public Bitmap f4981a;

        /* renamed from: b */
        public UnreadConversation f4982b;

        /* renamed from: c */
        public int f4983c;

        @Deprecated
        /* loaded from: classes3.dex */
        public static class UnreadConversation {

            /* renamed from: a */
            public final String[] f4984a;

            /* renamed from: b */
            public final RemoteInput f4985b;

            /* renamed from: c */
            public final PendingIntent f4986c;

            /* renamed from: d */
            public final PendingIntent f4987d;

            /* renamed from: e */
            public final String[] f4988e;

            /* renamed from: f */
            public final long f4989f;

            /* loaded from: classes3.dex */
            public static class Builder {

                /* renamed from: a */
                public final List<String> f4990a = new ArrayList();

                /* renamed from: b */
                public final String f4991b;

                /* renamed from: c */
                public RemoteInput f4992c;

                /* renamed from: d */
                public PendingIntent f4993d;

                /* renamed from: e */
                public PendingIntent f4994e;

                /* renamed from: f */
                public long f4995f;

                public Builder(@NonNull String str) {
                    this.f4991b = str;
                }

                @NonNull
                public Builder addMessage(@Nullable String str) {
                    if (str != null) {
                        this.f4990a.add(str);
                    }
                    return this;
                }

                @NonNull
                public UnreadConversation build() {
                    List<String> list = this.f4990a;
                    return new UnreadConversation((String[]) list.toArray(new String[list.size()]), this.f4992c, this.f4994e, this.f4993d, new String[]{this.f4991b}, this.f4995f);
                }

                @NonNull
                public Builder setLatestTimestamp(long j) {
                    this.f4995f = j;
                    return this;
                }

                @NonNull
                public Builder setReadPendingIntent(@Nullable PendingIntent pendingIntent) {
                    this.f4993d = pendingIntent;
                    return this;
                }

                @NonNull
                public Builder setReplyAction(@Nullable PendingIntent pendingIntent, @Nullable RemoteInput remoteInput) {
                    this.f4992c = remoteInput;
                    this.f4994e = pendingIntent;
                    return this;
                }
            }

            public UnreadConversation(@Nullable String[] strArr, @Nullable RemoteInput remoteInput, @Nullable PendingIntent pendingIntent, @Nullable PendingIntent pendingIntent2, @Nullable String[] strArr2, long j) {
                this.f4984a = strArr;
                this.f4985b = remoteInput;
                this.f4987d = pendingIntent2;
                this.f4986c = pendingIntent;
                this.f4988e = strArr2;
                this.f4989f = j;
            }

            public long getLatestTimestamp() {
                return this.f4989f;
            }

            @Nullable
            public String[] getMessages() {
                return this.f4984a;
            }

            @Nullable
            public String getParticipant() {
                String[] strArr = this.f4988e;
                if (strArr.length > 0) {
                    return strArr[0];
                }
                return null;
            }

            @Nullable
            public String[] getParticipants() {
                return this.f4988e;
            }

            @Nullable
            public PendingIntent getReadPendingIntent() {
                return this.f4987d;
            }

            @Nullable
            public RemoteInput getRemoteInput() {
                return this.f4985b;
            }

            @Nullable
            public PendingIntent getReplyPendingIntent() {
                return this.f4986c;
            }
        }

        @RequiresApi(20)
        /* renamed from: androidx.core.app.NotificationCompat$CarExtender$a */
        /* loaded from: classes3.dex */
        public static class C0571a {
            private C0571a() {
            }

            @DoNotInline
            /* renamed from: a */
            public static RemoteInput.Builder m2478a(RemoteInput.Builder builder, Bundle bundle) {
                return builder.addExtras(bundle);
            }

            @DoNotInline
            /* renamed from: b */
            public static android.app.RemoteInput m2479b(RemoteInput.Builder builder) {
                return builder.build();
            }

            @DoNotInline
            /* renamed from: c */
            public static Parcelable m2480c(android.app.RemoteInput remoteInput) {
                return remoteInput;
            }

            @DoNotInline
            /* renamed from: d */
            public static RemoteInput.Builder m2481d(String str) {
                return new RemoteInput.Builder(str);
            }

            @DoNotInline
            /* renamed from: e */
            public static boolean m2482e(android.app.RemoteInput remoteInput) {
                return remoteInput.getAllowFreeFormInput();
            }

            @DoNotInline
            /* renamed from: f */
            public static CharSequence[] m2483f(android.app.RemoteInput remoteInput) {
                return remoteInput.getChoices();
            }

            @DoNotInline
            /* renamed from: g */
            public static Bundle m2484g(android.app.RemoteInput remoteInput) {
                return remoteInput.getExtras();
            }

            @DoNotInline
            /* renamed from: h */
            public static CharSequence m2485h(android.app.RemoteInput remoteInput) {
                return remoteInput.getLabel();
            }

            @DoNotInline
            /* renamed from: i */
            public static String m2486i(android.app.RemoteInput remoteInput) {
                return remoteInput.getResultKey();
            }

            @DoNotInline
            /* renamed from: j */
            public static RemoteInput.Builder m2487j(RemoteInput.Builder builder, boolean z) {
                return builder.setAllowFreeFormInput(z);
            }

            @DoNotInline
            /* renamed from: k */
            public static RemoteInput.Builder m2488k(RemoteInput.Builder builder, CharSequence[] charSequenceArr) {
                return builder.setChoices(charSequenceArr);
            }

            @DoNotInline
            /* renamed from: l */
            public static RemoteInput.Builder m2489l(RemoteInput.Builder builder, CharSequence charSequence) {
                return builder.setLabel(charSequence);
            }
        }

        @RequiresApi(29)
        /* renamed from: androidx.core.app.NotificationCompat$CarExtender$b */
        /* loaded from: classes3.dex */
        public static class C0572b {
            private C0572b() {
            }

            @DoNotInline
            /* renamed from: a */
            public static int m2490a(android.app.RemoteInput remoteInput) {
                return remoteInput.getEditChoicesBeforeSending();
            }
        }

        public CarExtender() {
            this.f4983c = 0;
        }

        @RequiresApi(21)
        /* renamed from: a */
        public static Bundle m2476a(@NonNull UnreadConversation unreadConversation) {
            Bundle bundle = new Bundle();
            String str = (unreadConversation.getParticipants() == null || unreadConversation.getParticipants().length <= 1) ? null : unreadConversation.getParticipants()[0];
            int length = unreadConversation.getMessages().length;
            Parcelable[] parcelableArr = new Parcelable[length];
            for (int i = 0; i < length; i++) {
                Bundle bundle2 = new Bundle();
                bundle2.putString("text", unreadConversation.getMessages()[i]);
                bundle2.putString(f4973i, str);
                parcelableArr[i] = bundle2;
            }
            bundle.putParcelableArray(f4975k, parcelableArr);
            RemoteInput remoteInput = unreadConversation.getRemoteInput();
            if (remoteInput != null) {
                RemoteInput.Builder m2481d = C0571a.m2481d(remoteInput.getResultKey());
                C0571a.m2489l(m2481d, remoteInput.getLabel());
                C0571a.m2488k(m2481d, remoteInput.getChoices());
                C0571a.m2487j(m2481d, remoteInput.getAllowFreeFormInput());
                C0571a.m2478a(m2481d, remoteInput.getExtras());
                bundle.putParcelable(f4976l, C0571a.m2480c(C0571a.m2479b(m2481d)));
            }
            bundle.putParcelable(f4977m, unreadConversation.getReplyPendingIntent());
            bundle.putParcelable(f4978n, unreadConversation.getReadPendingIntent());
            bundle.putStringArray(f4979o, unreadConversation.getParticipants());
            bundle.putLong(f4980p, unreadConversation.getLatestTimestamp());
            return bundle;
        }

        @RequiresApi(21)
        /* renamed from: b */
        public static UnreadConversation m2477b(@Nullable Bundle bundle) {
            String[] strArr;
            if (bundle == null) {
                return null;
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray(f4975k);
            if (parcelableArray != null) {
                int length = parcelableArray.length;
                String[] strArr2 = new String[length];
                boolean z = false;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        z = true;
                        break;
                    }
                    Parcelable parcelable = parcelableArray[i];
                    if (!(parcelable instanceof Bundle)) {
                        break;
                    }
                    String string = ((Bundle) parcelable).getString("text");
                    strArr2[i] = string;
                    if (string == null) {
                        break;
                    }
                    i++;
                }
                if (!z) {
                    return null;
                }
                strArr = strArr2;
            } else {
                strArr = null;
            }
            PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable(f4978n);
            PendingIntent pendingIntent2 = (PendingIntent) bundle.getParcelable(f4977m);
            android.app.RemoteInput remoteInput = (android.app.RemoteInput) bundle.getParcelable(f4976l);
            String[] stringArray = bundle.getStringArray(f4979o);
            if (stringArray == null || stringArray.length != 1) {
                return null;
            }
            return new UnreadConversation(strArr, remoteInput != null ? new RemoteInput(C0571a.m2486i(remoteInput), C0571a.m2485h(remoteInput), C0571a.m2483f(remoteInput), C0571a.m2482e(remoteInput), C0572b.m2490a(remoteInput), C0571a.m2484g(remoteInput), null) : null, pendingIntent2, pendingIntent, stringArray, bundle.getLong(f4980p));
        }

        @Override // androidx.core.app.NotificationCompat.Extender
        @NonNull
        public Builder extend(@NonNull Builder builder) {
            Bundle bundle = new Bundle();
            Bitmap bitmap = this.f4981a;
            if (bitmap != null) {
                bundle.putParcelable(f4969e, bitmap);
            }
            int i = this.f4983c;
            if (i != 0) {
                bundle.putInt(f4971g, i);
            }
            UnreadConversation unreadConversation = this.f4982b;
            if (unreadConversation != null) {
                bundle.putBundle(f4970f, m2476a(unreadConversation));
            }
            builder.getExtras().putBundle(f4968d, bundle);
            return builder;
        }

        @ColorInt
        public int getColor() {
            return this.f4983c;
        }

        @Nullable
        public Bitmap getLargeIcon() {
            return this.f4981a;
        }

        @Nullable
        @Deprecated
        public UnreadConversation getUnreadConversation() {
            return this.f4982b;
        }

        @NonNull
        public CarExtender setColor(@ColorInt int i) {
            this.f4983c = i;
            return this;
        }

        @NonNull
        public CarExtender setLargeIcon(@Nullable Bitmap bitmap) {
            this.f4981a = bitmap;
            return this;
        }

        @NonNull
        @Deprecated
        public CarExtender setUnreadConversation(@Nullable UnreadConversation unreadConversation) {
            this.f4982b = unreadConversation;
            return this;
        }

        public CarExtender(@NonNull Notification notification) {
            this.f4983c = 0;
            Bundle bundle = NotificationCompat.getExtras(notification) == null ? null : NotificationCompat.getExtras(notification).getBundle(f4968d);
            if (bundle != null) {
                this.f4981a = (Bitmap) bundle.getParcelable(f4969e);
                this.f4983c = bundle.getInt(f4971g, 0);
                this.f4982b = m2477b(bundle.getBundle(f4970f));
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class InboxStyle extends Style {

        /* renamed from: e */
        public static final String f4998e = "androidx.core.app.NotificationCompat$InboxStyle";

        /* renamed from: d */
        public ArrayList<CharSequence> f4999d = new ArrayList<>();

        public InboxStyle() {
        }

        @NonNull
        public InboxStyle addLine(@Nullable CharSequence charSequence) {
            if (charSequence != null) {
                this.f4999d.add(Builder.limitCharSequenceLength(charSequence));
            }
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            Notification.InboxStyle bigContentTitle = new Notification.InboxStyle(notificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(this.f5020a);
            if (this.f5022c) {
                bigContentTitle.setSummaryText(this.f5021b);
            }
            Iterator<CharSequence> it2 = this.f4999d.iterator();
            while (it2.hasNext()) {
                bigContentTitle.addLine(it2.next());
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void clearCompatExtraKeys(@NonNull Bundle bundle) {
            super.clearCompatExtraKeys(bundle);
            bundle.remove(NotificationCompat.EXTRA_TEXT_LINES);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public String getClassName() {
            return f4998e;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void restoreFromCompatExtras(@NonNull Bundle bundle) {
            super.restoreFromCompatExtras(bundle);
            this.f4999d.clear();
            if (bundle.containsKey(NotificationCompat.EXTRA_TEXT_LINES)) {
                Collections.addAll(this.f4999d, bundle.getCharSequenceArray(NotificationCompat.EXTRA_TEXT_LINES));
            }
        }

        @NonNull
        public InboxStyle setBigContentTitle(@Nullable CharSequence charSequence) {
            this.f5020a = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        @NonNull
        public InboxStyle setSummaryText(@Nullable CharSequence charSequence) {
            this.f5021b = Builder.limitCharSequenceLength(charSequence);
            this.f5022c = true;
            return this;
        }

        public InboxStyle(@Nullable Builder builder) {
            setBuilder(builder);
        }
    }

    /* loaded from: classes3.dex */
    public static final class TvExtender implements Extender {

        /* renamed from: f */
        public static final String f5023f = "TvExtender";

        /* renamed from: g */
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public static final String f5024g = "android.tv.EXTENSIONS";

        /* renamed from: h */
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public static final String f5025h = "flags";

        /* renamed from: i */
        public static final String f5026i = "content_intent";

        /* renamed from: j */
        public static final String f5027j = "delete_intent";

        /* renamed from: k */
        public static final String f5028k = "channel_id";

        /* renamed from: l */
        public static final String f5029l = "suppressShowOverApps";

        /* renamed from: m */
        public static final int f5030m = 1;

        /* renamed from: a */
        public int f5031a;

        /* renamed from: b */
        public String f5032b;

        /* renamed from: c */
        public PendingIntent f5033c;

        /* renamed from: d */
        public PendingIntent f5034d;

        /* renamed from: e */
        public boolean f5035e;

        public TvExtender() {
            this.f5031a = 1;
        }

        @Override // androidx.core.app.NotificationCompat.Extender
        @NonNull
        public Builder extend(@NonNull Builder builder) {
            Bundle bundle = new Bundle();
            bundle.putInt("flags", this.f5031a);
            bundle.putString(f5028k, this.f5032b);
            bundle.putBoolean(f5029l, this.f5035e);
            PendingIntent pendingIntent = this.f5033c;
            if (pendingIntent != null) {
                bundle.putParcelable(f5026i, pendingIntent);
            }
            PendingIntent pendingIntent2 = this.f5034d;
            if (pendingIntent2 != null) {
                bundle.putParcelable(f5027j, pendingIntent2);
            }
            builder.getExtras().putBundle(f5024g, bundle);
            return builder;
        }

        @Nullable
        public String getChannelId() {
            return this.f5032b;
        }

        @Nullable
        public PendingIntent getContentIntent() {
            return this.f5033c;
        }

        @Nullable
        public PendingIntent getDeleteIntent() {
            return this.f5034d;
        }

        public boolean isAvailableOnTv() {
            return (this.f5031a & 1) != 0;
        }

        public boolean isSuppressShowOverApps() {
            return this.f5035e;
        }

        @NonNull
        public TvExtender setChannelId(@Nullable String str) {
            this.f5032b = str;
            return this;
        }

        @NonNull
        public TvExtender setContentIntent(@Nullable PendingIntent pendingIntent) {
            this.f5033c = pendingIntent;
            return this;
        }

        @NonNull
        public TvExtender setDeleteIntent(@Nullable PendingIntent pendingIntent) {
            this.f5034d = pendingIntent;
            return this;
        }

        @NonNull
        public TvExtender setSuppressShowOverApps(boolean z) {
            this.f5035e = z;
            return this;
        }

        public TvExtender(@NonNull Notification notification) {
            Bundle bundle = notification.extras;
            Bundle bundle2 = bundle == null ? null : bundle.getBundle(f5024g);
            if (bundle2 != null) {
                this.f5031a = bundle2.getInt("flags");
                this.f5032b = bundle2.getString(f5028k);
                this.f5035e = bundle2.getBoolean(f5029l);
                this.f5033c = (PendingIntent) bundle2.getParcelable(f5026i);
                this.f5034d = (PendingIntent) bundle2.getParcelable(f5027j);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class MessagingStyle extends Style {
        public static final int MAXIMUM_RETAINED_MESSAGES = 25;

        /* renamed from: i */
        public static final String f5000i = "androidx.core.app.NotificationCompat$MessagingStyle";

        /* renamed from: d */
        public final List<Message> f5001d = new ArrayList();

        /* renamed from: e */
        public final List<Message> f5002e = new ArrayList();

        /* renamed from: f */
        public Person f5003f;

        /* renamed from: g */
        @Nullable
        public CharSequence f5004g;

        /* renamed from: h */
        @Nullable
        public Boolean f5005h;

        @RequiresApi(24)
        /* renamed from: androidx.core.app.NotificationCompat$MessagingStyle$a */
        /* loaded from: classes3.dex */
        public static class C0576a {
            private C0576a() {
            }

            @DoNotInline
            /* renamed from: a */
            public static Notification.MessagingStyle m2508a(Notification.MessagingStyle messagingStyle, Notification.MessagingStyle.Message message) {
                return messagingStyle.addMessage(message);
            }

            @DoNotInline
            /* renamed from: b */
            public static Notification.MessagingStyle m2509b(CharSequence charSequence) {
                return new Notification.MessagingStyle(charSequence);
            }

            @DoNotInline
            /* renamed from: c */
            public static Notification.MessagingStyle m2510c(Notification.MessagingStyle messagingStyle, CharSequence charSequence) {
                return messagingStyle.setConversationTitle(charSequence);
            }
        }

        @RequiresApi(26)
        /* renamed from: androidx.core.app.NotificationCompat$MessagingStyle$b */
        /* loaded from: classes3.dex */
        public static class C0577b {
            private C0577b() {
            }

            @DoNotInline
            /* renamed from: a */
            public static Notification.MessagingStyle m2511a(Notification.MessagingStyle messagingStyle, Notification.MessagingStyle.Message message) {
                return messagingStyle.addHistoricMessage(message);
            }
        }

        @RequiresApi(28)
        /* renamed from: androidx.core.app.NotificationCompat$MessagingStyle$c */
        /* loaded from: classes3.dex */
        public static class C0578c {
            private C0578c() {
            }

            @DoNotInline
            /* renamed from: a */
            public static Notification.MessagingStyle m2512a(android.app.Person person) {
                return new Notification.MessagingStyle(person);
            }

            @DoNotInline
            /* renamed from: b */
            public static Notification.MessagingStyle m2513b(Notification.MessagingStyle messagingStyle, boolean z) {
                return messagingStyle.setGroupConversation(z);
            }
        }

        public MessagingStyle() {
        }

        @Nullable
        public static MessagingStyle extractMessagingStyleFromNotification(@NonNull Notification notification) {
            Style extractStyleFromNotification = Style.extractStyleFromNotification(notification);
            if (extractStyleFromNotification instanceof MessagingStyle) {
                return (MessagingStyle) extractStyleFromNotification;
            }
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public void addCompatExtras(@NonNull Bundle bundle) {
            super.addCompatExtras(bundle);
            bundle.putCharSequence(NotificationCompat.EXTRA_SELF_DISPLAY_NAME, this.f5003f.getName());
            bundle.putBundle(NotificationCompat.EXTRA_MESSAGING_STYLE_USER, this.f5003f.toBundle());
            bundle.putCharSequence(NotificationCompat.EXTRA_HIDDEN_CONVERSATION_TITLE, this.f5004g);
            if (this.f5004g != null && this.f5005h.booleanValue()) {
                bundle.putCharSequence(NotificationCompat.EXTRA_CONVERSATION_TITLE, this.f5004g);
            }
            if (!this.f5001d.isEmpty()) {
                bundle.putParcelableArray(NotificationCompat.EXTRA_MESSAGES, Message.m2499a(this.f5001d));
            }
            if (!this.f5002e.isEmpty()) {
                bundle.putParcelableArray(NotificationCompat.EXTRA_HISTORIC_MESSAGES, Message.m2499a(this.f5002e));
            }
            Boolean bool = this.f5005h;
            if (bool != null) {
                bundle.putBoolean(NotificationCompat.EXTRA_IS_GROUP_CONVERSATION, bool.booleanValue());
            }
        }

        @NonNull
        public MessagingStyle addHistoricMessage(@Nullable Message message) {
            if (message != null) {
                this.f5002e.add(message);
                if (this.f5002e.size() > 25) {
                    this.f5002e.remove(0);
                }
            }
            return this;
        }

        @NonNull
        @Deprecated
        public MessagingStyle addMessage(@Nullable CharSequence charSequence, long j, @Nullable CharSequence charSequence2) {
            this.f5001d.add(new Message(charSequence, j, new Person.Builder().setName(charSequence2).build()));
            if (this.f5001d.size() > 25) {
                this.f5001d.remove(0);
            }
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            setGroupConversation(isGroupConversation());
            Notification.MessagingStyle m2512a = C0578c.m2512a(this.f5003f.toAndroidPerson());
            Iterator<Message> it2 = this.f5001d.iterator();
            while (it2.hasNext()) {
                C0576a.m2508a(m2512a, it2.next().m2502d());
            }
            Iterator<Message> it3 = this.f5002e.iterator();
            while (it3.hasNext()) {
                C0577b.m2511a(m2512a, it3.next().m2502d());
            }
            this.f5005h.booleanValue();
            C0576a.m2510c(m2512a, this.f5004g);
            C0578c.m2513b(m2512a, this.f5005h.booleanValue());
            m2512a.setBuilder(notificationBuilderWithBuilderAccessor.getBuilder());
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void clearCompatExtraKeys(@NonNull Bundle bundle) {
            super.clearCompatExtraKeys(bundle);
            bundle.remove(NotificationCompat.EXTRA_MESSAGING_STYLE_USER);
            bundle.remove(NotificationCompat.EXTRA_SELF_DISPLAY_NAME);
            bundle.remove(NotificationCompat.EXTRA_CONVERSATION_TITLE);
            bundle.remove(NotificationCompat.EXTRA_HIDDEN_CONVERSATION_TITLE);
            bundle.remove(NotificationCompat.EXTRA_MESSAGES);
            bundle.remove(NotificationCompat.EXTRA_HISTORIC_MESSAGES);
            bundle.remove(NotificationCompat.EXTRA_IS_GROUP_CONVERSATION);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public String getClassName() {
            return f5000i;
        }

        @Nullable
        public CharSequence getConversationTitle() {
            return this.f5004g;
        }

        @NonNull
        public List<Message> getHistoricMessages() {
            return this.f5002e;
        }

        @NonNull
        public List<Message> getMessages() {
            return this.f5001d;
        }

        @NonNull
        public Person getUser() {
            return this.f5003f;
        }

        @Nullable
        @Deprecated
        public CharSequence getUserDisplayName() {
            return this.f5003f.getName();
        }

        public boolean isGroupConversation() {
            Builder builder = this.mBuilder;
            if (builder != null && builder.mContext.getApplicationInfo().targetSdkVersion < 28 && this.f5005h == null) {
                return this.f5004g != null;
            }
            Boolean bool = this.f5005h;
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        }

        @Nullable
        /* renamed from: l */
        public final Message m2495l() {
            for (int size = this.f5001d.size() - 1; size >= 0; size--) {
                Message message = this.f5001d.get(size);
                if (message.getPerson() != null && !TextUtils.isEmpty(message.getPerson().getName())) {
                    return message;
                }
            }
            if (this.f5001d.isEmpty()) {
                return null;
            }
            return this.f5001d.get(r3.size() - 1);
        }

        /* renamed from: m */
        public final boolean m2496m() {
            for (int size = this.f5001d.size() - 1; size >= 0; size--) {
                Message message = this.f5001d.get(size);
                if (message.getPerson() != null && message.getPerson().getName() == null) {
                    return true;
                }
            }
            return false;
        }

        @NonNull
        /* renamed from: n */
        public final TextAppearanceSpan m2497n(int i) {
            return new TextAppearanceSpan(null, 0, 0, ColorStateList.valueOf(i), null);
        }

        /* renamed from: o */
        public final CharSequence m2498o(@NonNull Message message) {
            BidiFormatter bidiFormatter = BidiFormatter.getInstance();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            CharSequence name = message.getPerson() == null ? "" : message.getPerson().getName();
            int i = -16777216;
            if (TextUtils.isEmpty(name)) {
                name = this.f5003f.getName();
                if (this.mBuilder.getColor() != 0) {
                    i = this.mBuilder.getColor();
                }
            }
            CharSequence unicodeWrap = bidiFormatter.unicodeWrap(name);
            spannableStringBuilder.append(unicodeWrap);
            spannableStringBuilder.setSpan(m2497n(i), spannableStringBuilder.length() - unicodeWrap.length(), spannableStringBuilder.length(), 33);
            spannableStringBuilder.append((CharSequence) GlideException.C1935a.f14609h).append(bidiFormatter.unicodeWrap(message.getText() != null ? message.getText() : ""));
            return spannableStringBuilder;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void restoreFromCompatExtras(@NonNull Bundle bundle) {
            super.restoreFromCompatExtras(bundle);
            this.f5001d.clear();
            if (bundle.containsKey(NotificationCompat.EXTRA_MESSAGING_STYLE_USER)) {
                this.f5003f = Person.fromBundle(bundle.getBundle(NotificationCompat.EXTRA_MESSAGING_STYLE_USER));
            } else {
                this.f5003f = new Person.Builder().setName(bundle.getString(NotificationCompat.EXTRA_SELF_DISPLAY_NAME)).build();
            }
            CharSequence charSequence = bundle.getCharSequence(NotificationCompat.EXTRA_CONVERSATION_TITLE);
            this.f5004g = charSequence;
            if (charSequence == null) {
                this.f5004g = bundle.getCharSequence(NotificationCompat.EXTRA_HIDDEN_CONVERSATION_TITLE);
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray(NotificationCompat.EXTRA_MESSAGES);
            if (parcelableArray != null) {
                this.f5001d.addAll(Message.m2501c(parcelableArray));
            }
            Parcelable[] parcelableArray2 = bundle.getParcelableArray(NotificationCompat.EXTRA_HISTORIC_MESSAGES);
            if (parcelableArray2 != null) {
                this.f5002e.addAll(Message.m2501c(parcelableArray2));
            }
            if (bundle.containsKey(NotificationCompat.EXTRA_IS_GROUP_CONVERSATION)) {
                this.f5005h = Boolean.valueOf(bundle.getBoolean(NotificationCompat.EXTRA_IS_GROUP_CONVERSATION));
            }
        }

        @NonNull
        public MessagingStyle setConversationTitle(@Nullable CharSequence charSequence) {
            this.f5004g = charSequence;
            return this;
        }

        @NonNull
        public MessagingStyle setGroupConversation(boolean z) {
            this.f5005h = Boolean.valueOf(z);
            return this;
        }

        @Deprecated
        public MessagingStyle(@NonNull CharSequence charSequence) {
            this.f5003f = new Person.Builder().setName(charSequence).build();
        }

        /* loaded from: classes3.dex */
        public static final class Message {

            /* renamed from: g */
            public static final String f5006g = "text";

            /* renamed from: h */
            public static final String f5007h = "time";

            /* renamed from: i */
            public static final String f5008i = "sender";

            /* renamed from: j */
            public static final String f5009j = "type";

            /* renamed from: k */
            public static final String f5010k = "uri";

            /* renamed from: l */
            public static final String f5011l = "extras";

            /* renamed from: m */
            public static final String f5012m = "person";

            /* renamed from: n */
            public static final String f5013n = "sender_person";

            /* renamed from: a */
            public final CharSequence f5014a;

            /* renamed from: b */
            public final long f5015b;

            /* renamed from: c */
            @Nullable
            public final Person f5016c;

            /* renamed from: d */
            public Bundle f5017d;

            /* renamed from: e */
            @Nullable
            public String f5018e;

            /* renamed from: f */
            @Nullable
            public Uri f5019f;

            @RequiresApi(24)
            /* renamed from: androidx.core.app.NotificationCompat$MessagingStyle$Message$a */
            /* loaded from: classes3.dex */
            public static class C0574a {
                private C0574a() {
                }

                @DoNotInline
                /* renamed from: a */
                public static Notification.MessagingStyle.Message m2504a(CharSequence charSequence, long j, CharSequence charSequence2) {
                    return new Notification.MessagingStyle.Message(charSequence, j, charSequence2);
                }

                @DoNotInline
                /* renamed from: b */
                public static Notification.MessagingStyle.Message m2505b(Notification.MessagingStyle.Message message, String str, Uri uri) {
                    return message.setData(str, uri);
                }
            }

            @RequiresApi(28)
            /* renamed from: androidx.core.app.NotificationCompat$MessagingStyle$Message$b */
            /* loaded from: classes3.dex */
            public static class C0575b {
                private C0575b() {
                }

                @DoNotInline
                /* renamed from: a */
                public static Parcelable m2506a(android.app.Person person) {
                    return person;
                }

                @DoNotInline
                /* renamed from: b */
                public static Notification.MessagingStyle.Message m2507b(CharSequence charSequence, long j, android.app.Person person) {
                    return new Notification.MessagingStyle.Message(charSequence, j, person);
                }
            }

            public Message(@Nullable CharSequence charSequence, long j, @Nullable Person person) {
                this.f5017d = new Bundle();
                this.f5014a = charSequence;
                this.f5015b = j;
                this.f5016c = person;
            }

            @NonNull
            /* renamed from: a */
            public static Bundle[] m2499a(@NonNull List<Message> list) {
                Bundle[] bundleArr = new Bundle[list.size()];
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    bundleArr[i] = list.get(i).m2503e();
                }
                return bundleArr;
            }

            @Nullable
            /* renamed from: b */
            public static Message m2500b(@NonNull Bundle bundle) {
                try {
                    if (bundle.containsKey("text") && bundle.containsKey("time")) {
                        Message message = new Message(bundle.getCharSequence("text"), bundle.getLong("time"), bundle.containsKey(f5012m) ? Person.fromBundle(bundle.getBundle(f5012m)) : bundle.containsKey(f5013n) ? Person.fromAndroidPerson((android.app.Person) bundle.getParcelable(f5013n)) : bundle.containsKey(f5008i) ? new Person.Builder().setName(bundle.getCharSequence(f5008i)).build() : null);
                        if (bundle.containsKey("type") && bundle.containsKey("uri")) {
                            message.setData(bundle.getString("type"), (Uri) bundle.getParcelable("uri"));
                        }
                        if (bundle.containsKey("extras")) {
                            message.getExtras().putAll(bundle.getBundle("extras"));
                        }
                        return message;
                    }
                } catch (ClassCastException unused) {
                }
                return null;
            }

            @NonNull
            /* renamed from: c */
            public static List<Message> m2501c(@NonNull Parcelable[] parcelableArr) {
                Message m2500b;
                ArrayList arrayList = new ArrayList(parcelableArr.length);
                for (Parcelable parcelable : parcelableArr) {
                    if ((parcelable instanceof Bundle) && (m2500b = m2500b((Bundle) parcelable)) != null) {
                        arrayList.add(m2500b);
                    }
                }
                return arrayList;
            }

            @NonNull
            @RequiresApi(24)
            @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
            /* renamed from: d */
            public Notification.MessagingStyle.Message m2502d() {
                Person person = getPerson();
                Notification.MessagingStyle.Message m2507b = C0575b.m2507b(getText(), getTimestamp(), person == null ? null : person.toAndroidPerson());
                if (getDataMimeType() != null) {
                    C0574a.m2505b(m2507b, getDataMimeType(), getDataUri());
                }
                return m2507b;
            }

            @NonNull
            /* renamed from: e */
            public final Bundle m2503e() {
                Bundle bundle = new Bundle();
                CharSequence charSequence = this.f5014a;
                if (charSequence != null) {
                    bundle.putCharSequence("text", charSequence);
                }
                bundle.putLong("time", this.f5015b);
                Person person = this.f5016c;
                if (person != null) {
                    bundle.putCharSequence(f5008i, person.getName());
                    bundle.putParcelable(f5013n, C0575b.m2506a(this.f5016c.toAndroidPerson()));
                }
                String str = this.f5018e;
                if (str != null) {
                    bundle.putString("type", str);
                }
                Uri uri = this.f5019f;
                if (uri != null) {
                    bundle.putParcelable("uri", uri);
                }
                Bundle bundle2 = this.f5017d;
                if (bundle2 != null) {
                    bundle.putBundle("extras", bundle2);
                }
                return bundle;
            }

            @Nullable
            public String getDataMimeType() {
                return this.f5018e;
            }

            @Nullable
            public Uri getDataUri() {
                return this.f5019f;
            }

            @NonNull
            public Bundle getExtras() {
                return this.f5017d;
            }

            @Nullable
            public Person getPerson() {
                return this.f5016c;
            }

            @Nullable
            @Deprecated
            public CharSequence getSender() {
                Person person = this.f5016c;
                if (person == null) {
                    return null;
                }
                return person.getName();
            }

            @Nullable
            public CharSequence getText() {
                return this.f5014a;
            }

            public long getTimestamp() {
                return this.f5015b;
            }

            @NonNull
            public Message setData(@Nullable String str, @Nullable Uri uri) {
                this.f5018e = str;
                this.f5019f = uri;
                return this;
            }

            @Deprecated
            public Message(@Nullable CharSequence charSequence, long j, @Nullable CharSequence charSequence2) {
                this(charSequence, j, new Person.Builder().setName(charSequence2).build());
            }
        }

        @NonNull
        public MessagingStyle addMessage(@Nullable CharSequence charSequence, long j, @Nullable Person person) {
            addMessage(new Message(charSequence, j, person));
            return this;
        }

        @NonNull
        public MessagingStyle addMessage(@Nullable Message message) {
            if (message != null) {
                this.f5001d.add(message);
                if (this.f5001d.size() > 25) {
                    this.f5001d.remove(0);
                }
            }
            return this;
        }

        public MessagingStyle(@NonNull Person person) {
            if (!TextUtils.isEmpty(person.getName())) {
                this.f5003f = person;
                return;
            }
            throw new IllegalArgumentException("User's name must not be empty.");
        }
    }
}
