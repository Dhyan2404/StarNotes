.class public Landroidx/core/app/NotificationChannelCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationChannelCompat$a;,
        Landroidx/core/app/NotificationChannelCompat$c;,
        Landroidx/core/app/NotificationChannelCompat$b;,
        Landroidx/core/app/NotificationChannelCompat$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = "miscellaneous"

.field public static final s:Z = true

.field public static final t:I


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public b:Ljava/lang/CharSequence;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Landroid/net/Uri;

.field public h:Landroid/media/AudioAttributes;

.field public i:Z

.field public j:I

.field public k:Z

.field public l:[J

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Z

.field public p:I

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>(Landroid/app/NotificationChannel;)V
    .locals 3
    .param p1    # Landroid/app/NotificationChannel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 8
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->i(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->j(Landroid/app/NotificationChannel;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/core/app/NotificationChannelCompat;-><init>(Ljava/lang/String;I)V

    .line 9
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->m(Landroid/app/NotificationChannel;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->b:Ljava/lang/CharSequence;

    .line 10
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->g(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->d:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->h(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->e:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->b(Landroid/app/NotificationChannel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->f:Z

    .line 13
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->n(Landroid/app/NotificationChannel;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->g:Landroid/net/Uri;

    .line 14
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->f(Landroid/app/NotificationChannel;)Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->h:Landroid/media/AudioAttributes;

    .line 15
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->v(Landroid/app/NotificationChannel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->i:Z

    .line 16
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->k(Landroid/app/NotificationChannel;)I

    move-result v0

    iput v0, p0, Landroidx/core/app/NotificationChannelCompat;->j:I

    .line 17
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->w(Landroid/app/NotificationChannel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->k:Z

    .line 18
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->o(Landroid/app/NotificationChannel;)[J

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->l:[J

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 20
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$c;->b(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->m:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$c;->a(Landroid/app/NotificationChannel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->n:Ljava/lang/String;

    .line 22
    :cond_0
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->a(Landroid/app/NotificationChannel;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/core/app/NotificationChannelCompat;->o:Z

    .line 23
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$a;->l(Landroid/app/NotificationChannel;)I

    move-result v2

    iput v2, p0, Landroidx/core/app/NotificationChannelCompat;->p:I

    .line 24
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$b;->a(Landroid/app/NotificationChannel;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/core/app/NotificationChannelCompat;->q:Z

    if-lt v0, v1, :cond_1

    .line 25
    invoke-static {p1}, Landroidx/core/app/NotificationChannelCompat$c;->c(Landroid/app/NotificationChannel;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/core/app/NotificationChannelCompat;->r:Z

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/core/app/NotificationChannelCompat;->f:Z

    .line 3
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->g:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/core/app/NotificationChannelCompat;->j:I

    .line 5
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/core/app/NotificationChannelCompat;->a:Ljava/lang/String;

    .line 6
    iput p2, p0, Landroidx/core/app/NotificationChannelCompat;->c:I

    .line 7
    sget-object p1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object p1, p0, Landroidx/core/app/NotificationChannelCompat;->h:Landroid/media/AudioAttributes;

    return-void
.end method


# virtual methods
.method public a()Landroid/app/NotificationChannel;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->a:Ljava/lang/String;

    iget-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->b:Ljava/lang/CharSequence;

    iget v3, p0, Landroidx/core/app/NotificationChannelCompat;->c:I

    invoke-static {v1, v2, v3}, Landroidx/core/app/NotificationChannelCompat$a;->c(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v1

    iget-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/core/app/NotificationChannelCompat$a;->p(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Landroidx/core/app/NotificationChannelCompat$a;->q(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    iget-boolean v2, p0, Landroidx/core/app/NotificationChannelCompat;->f:Z

    invoke-static {v1, v2}, Landroidx/core/app/NotificationChannelCompat$a;->s(Landroid/app/NotificationChannel;Z)V

    iget-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->g:Landroid/net/Uri;

    iget-object v3, p0, Landroidx/core/app/NotificationChannelCompat;->h:Landroid/media/AudioAttributes;

    invoke-static {v1, v2, v3}, Landroidx/core/app/NotificationChannelCompat$a;->t(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    iget-boolean v2, p0, Landroidx/core/app/NotificationChannelCompat;->i:Z

    invoke-static {v1, v2}, Landroidx/core/app/NotificationChannelCompat$a;->d(Landroid/app/NotificationChannel;Z)V

    iget v2, p0, Landroidx/core/app/NotificationChannelCompat;->j:I

    invoke-static {v1, v2}, Landroidx/core/app/NotificationChannelCompat$a;->r(Landroid/app/NotificationChannel;I)V

    iget-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->l:[J

    invoke-static {v1, v2}, Landroidx/core/app/NotificationChannelCompat$a;->u(Landroid/app/NotificationChannel;[J)V

    iget-boolean v2, p0, Landroidx/core/app/NotificationChannelCompat;->k:Z

    invoke-static {v1, v2}, Landroidx/core/app/NotificationChannelCompat$a;->e(Landroid/app/NotificationChannel;Z)V

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Landroidx/core/app/NotificationChannelCompat;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/core/app/NotificationChannelCompat;->n:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {v1, v0, p0}, Landroidx/core/app/NotificationChannelCompat$c;->d(Landroid/app/NotificationChannel;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public canBubble()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/app/NotificationChannelCompat;->q:Z

    return p0
.end method

.method public canBypassDnd()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/app/NotificationChannelCompat;->o:Z

    return p0
.end method

.method public canShowBadge()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/app/NotificationChannelCompat;->f:Z

    return p0
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/core/app/NotificationChannelCompat;->h:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/core/app/NotificationChannelCompat;->n:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/core/app/NotificationChannelCompat;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/core/app/NotificationChannelCompat;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Landroidx/core/app/NotificationChannelCompat;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getImportance()I
    .locals 0

    iget p0, p0, Landroidx/core/app/NotificationChannelCompat;->c:I

    return p0
.end method

.method public getLightColor()I
    .locals 0

    iget p0, p0, Landroidx/core/app/NotificationChannelCompat;->j:I

    return p0
.end method

.method public getLockscreenVisibility()I
    .locals 0

    iget p0, p0, Landroidx/core/app/NotificationChannelCompat;->p:I

    return p0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/core/app/NotificationChannelCompat;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getParentChannelId()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/core/app/NotificationChannelCompat;->m:Ljava/lang/String;

    return-object p0
.end method

.method public getSound()Landroid/net/Uri;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/core/app/NotificationChannelCompat;->g:Landroid/net/Uri;

    return-object p0
.end method

.method public getVibrationPattern()[J
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/core/app/NotificationChannelCompat;->l:[J

    return-object p0
.end method

.method public isImportantConversation()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/app/NotificationChannelCompat;->r:Z

    return p0
.end method

.method public shouldShowLights()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/app/NotificationChannelCompat;->i:Z

    return p0
.end method

.method public shouldVibrate()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/app/NotificationChannelCompat;->k:Z

    return p0
.end method

.method public toBuilder()Landroidx/core/app/NotificationChannelCompat$Builder;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/core/app/NotificationChannelCompat$Builder;

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->a:Ljava/lang/String;

    iget v2, p0, Landroidx/core/app/NotificationChannelCompat;->c:I

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationChannelCompat$Builder;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setDescription(Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/core/app/NotificationChannelCompat;->f:Z

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setShowBadge(Z)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->g:Landroid/net/Uri;

    iget-object v2, p0, Landroidx/core/app/NotificationChannelCompat;->h:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationChannelCompat$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/core/app/NotificationChannelCompat;->i:Z

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setLightsEnabled(Z)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/core/app/NotificationChannelCompat;->j:I

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setLightColor(I)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/core/app/NotificationChannelCompat;->k:Z

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setVibrationEnabled(Z)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->l:[J

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationChannelCompat$Builder;->setVibrationPattern([J)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/NotificationChannelCompat;->m:Ljava/lang/String;

    iget-object p0, p0, Landroidx/core/app/NotificationChannelCompat;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroidx/core/app/NotificationChannelCompat$Builder;->setConversationId(Ljava/lang/String;Ljava/lang/String;)Landroidx/core/app/NotificationChannelCompat$Builder;

    move-result-object p0

    return-object p0
.end method
