package androidx.media.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;
import android.widget.RemoteViews;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.NotificationBuilderWithBuilderAccessor;
import androidx.core.app.NotificationCompat;
import androidx.media.C1205R;

/* loaded from: classes3.dex */
public class NotificationCompat {

    /* loaded from: classes3.dex */
    public static class DecoratedMediaCustomViewStyle extends MediaStyle {
        @Override // androidx.media.app.NotificationCompat.MediaStyle, androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public void apply(NotificationBuilderWithBuilderAccessor builder) {
            C1211b.m5081d(builder.getBuilder(), C1211b.m5079b(C1212c.m5083a(), this.f8273d, this.f8274e));
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle, androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor builder) {
            return null;
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle, androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor builder) {
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public RemoteViews makeHeadsUpContentView(NotificationBuilderWithBuilderAccessor builder) {
            return null;
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle
        /* renamed from: o */
        public int mo5071o(int actionCount) {
            return actionCount <= 3 ? C1205R.layout.notification_template_big_media_narrow_custom : C1205R.layout.notification_template_big_media_custom;
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle
        /* renamed from: p */
        public int mo5072p() {
            return this.mBuilder.getContentView() != null ? C1205R.layout.notification_template_media_custom : super.mo5072p();
        }

        /* renamed from: q */
        public final void m5073q(RemoteViews views) {
            views.setInt(C1205R.id.status_bar_latest_event_content, "setBackgroundColor", this.mBuilder.getColor() != 0 ? this.mBuilder.getColor() : this.mBuilder.mContext.getResources().getColor(C1205R.color.notification_material_background_media_default_color));
        }
    }

    @RequiresApi(15)
    /* renamed from: androidx.media.app.NotificationCompat$a */
    /* loaded from: classes3.dex */
    public static class C1210a {
        @DoNotInline
        /* renamed from: a */
        public static void m5077a(RemoteViews remoteViews, int viewId, CharSequence contentDescription) {
            remoteViews.setContentDescription(viewId, contentDescription);
        }
    }

    @RequiresApi(21)
    /* renamed from: androidx.media.app.NotificationCompat$b */
    /* loaded from: classes3.dex */
    public static class C1211b {
        @DoNotInline
        /* renamed from: a */
        public static Notification.MediaStyle m5078a() {
            return new Notification.MediaStyle();
        }

        @DoNotInline
        /* renamed from: b */
        public static Notification.MediaStyle m5079b(Notification.MediaStyle style, int[] actionsToShowInCompact, MediaSessionCompat.Token token) {
            if (actionsToShowInCompact != null) {
                m5082e(style, actionsToShowInCompact);
            }
            if (token != null) {
                m5080c(style, (MediaSession.Token) token.getToken());
            }
            return style;
        }

        @DoNotInline
        /* renamed from: c */
        public static void m5080c(Notification.MediaStyle style, MediaSession.Token token) {
            style.setMediaSession(token);
        }

        @DoNotInline
        /* renamed from: d */
        public static void m5081d(Notification.Builder builder, Notification.MediaStyle style) {
            builder.setStyle(style);
        }

        @DoNotInline
        /* renamed from: e */
        public static void m5082e(Notification.MediaStyle style, int... actions) {
            style.setShowActionsInCompactView(actions);
        }
    }

    @RequiresApi(24)
    /* renamed from: androidx.media.app.NotificationCompat$c */
    /* loaded from: classes3.dex */
    public static class C1212c {
        @DoNotInline
        /* renamed from: a */
        public static Notification.DecoratedMediaCustomViewStyle m5083a() {
            return new Notification.DecoratedMediaCustomViewStyle();
        }
    }

    /* loaded from: classes3.dex */
    public static class MediaStyle extends NotificationCompat.Style {

        /* renamed from: h */
        public static final int f8271h = 3;

        /* renamed from: i */
        public static final int f8272i = 5;

        /* renamed from: d */
        public int[] f8273d = null;

        /* renamed from: e */
        public MediaSessionCompat.Token f8274e;

        /* renamed from: f */
        public boolean f8275f;

        /* renamed from: g */
        public PendingIntent f8276g;

        public MediaStyle() {
        }

        public static MediaSessionCompat.Token getMediaSession(Notification notification) {
            Parcelable parcelable;
            Bundle extras = androidx.core.app.NotificationCompat.getExtras(notification);
            if (extras == null || (parcelable = extras.getParcelable(androidx.core.app.NotificationCompat.EXTRA_MEDIA_SESSION)) == null) {
                return null;
            }
            return MediaSessionCompat.Token.fromToken(parcelable);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public void apply(NotificationBuilderWithBuilderAccessor builder) {
            C1211b.m5081d(builder.getBuilder(), C1211b.m5079b(C1211b.m5078a(), this.f8273d, this.f8274e));
        }

        /* renamed from: l */
        public RemoteViews m5074l() {
            int min = Math.min(this.mBuilder.mActions.size(), 5);
            RemoteViews applyStandardTemplate = applyStandardTemplate(false, mo5071o(min), false);
            applyStandardTemplate.removeAllViews(C1205R.id.media_actions);
            if (min > 0) {
                for (int i = 0; i < min; i++) {
                    applyStandardTemplate.addView(C1205R.id.media_actions, m5076n(this.mBuilder.mActions.get(i)));
                }
            }
            if (this.f8275f) {
                applyStandardTemplate.setViewVisibility(C1205R.id.cancel_action, 0);
                applyStandardTemplate.setInt(C1205R.id.cancel_action, "setAlpha", this.mBuilder.mContext.getResources().getInteger(C1205R.integer.cancel_button_image_alpha));
                applyStandardTemplate.setOnClickPendingIntent(C1205R.id.cancel_action, this.f8276g);
            } else {
                applyStandardTemplate.setViewVisibility(C1205R.id.cancel_action, 8);
            }
            return applyStandardTemplate;
        }

        /* renamed from: m */
        public RemoteViews m5075m() {
            RemoteViews applyStandardTemplate = applyStandardTemplate(false, mo5072p(), true);
            int size = this.mBuilder.mActions.size();
            int[] iArr = this.f8273d;
            int min = iArr == null ? 0 : Math.min(iArr.length, 3);
            applyStandardTemplate.removeAllViews(C1205R.id.media_actions);
            if (min > 0) {
                for (int i = 0; i < min; i++) {
                    if (i >= size) {
                        throw new IllegalArgumentException(String.format("setShowActionsInCompactView: action %d out of bounds (max %d)", Integer.valueOf(i), Integer.valueOf(size - 1)));
                    }
                    applyStandardTemplate.addView(C1205R.id.media_actions, m5076n(this.mBuilder.mActions.get(this.f8273d[i])));
                }
            }
            if (this.f8275f) {
                applyStandardTemplate.setViewVisibility(C1205R.id.end_padder, 8);
                applyStandardTemplate.setViewVisibility(C1205R.id.cancel_action, 0);
                applyStandardTemplate.setOnClickPendingIntent(C1205R.id.cancel_action, this.f8276g);
                applyStandardTemplate.setInt(C1205R.id.cancel_action, "setAlpha", this.mBuilder.mContext.getResources().getInteger(C1205R.integer.cancel_button_image_alpha));
            } else {
                applyStandardTemplate.setViewVisibility(C1205R.id.end_padder, 0);
                applyStandardTemplate.setViewVisibility(C1205R.id.cancel_action, 8);
            }
            return applyStandardTemplate;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor builder) {
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor builder) {
            return null;
        }

        /* renamed from: n */
        public final RemoteViews m5076n(NotificationCompat.Action action) {
            boolean z = action.getActionIntent() == null;
            RemoteViews remoteViews = new RemoteViews(this.mBuilder.mContext.getPackageName(), C1205R.layout.notification_media_action);
            remoteViews.setImageViewResource(C1205R.id.action0, action.getIcon());
            if (!z) {
                remoteViews.setOnClickPendingIntent(C1205R.id.action0, action.getActionIntent());
            }
            C1210a.m5077a(remoteViews, C1205R.id.action0, action.getTitle());
            return remoteViews;
        }

        /* renamed from: o */
        public int mo5071o(int actionCount) {
            return actionCount <= 3 ? C1205R.layout.notification_template_big_media_narrow : C1205R.layout.notification_template_big_media;
        }

        /* renamed from: p */
        public int mo5072p() {
            return C1205R.layout.notification_template_media;
        }

        public MediaStyle setCancelButtonIntent(PendingIntent pendingIntent) {
            this.f8276g = pendingIntent;
            return this;
        }

        public MediaStyle setMediaSession(MediaSessionCompat.Token token) {
            this.f8274e = token;
            return this;
        }

        public MediaStyle setShowActionsInCompactView(int... actions) {
            this.f8273d = actions;
            return this;
        }

        public MediaStyle setShowCancelButton(boolean show) {
            return this;
        }

        public MediaStyle(NotificationCompat.Builder builder) {
            setBuilder(builder);
        }
    }
}
