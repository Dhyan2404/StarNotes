.class public Landroidx/media/MediaBrowserServiceCompat$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/MediaBrowserServiceCompat$g;->f(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field public final synthetic f:Landroidx/media/MediaBrowserServiceCompat$g;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat$g;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$token"
        }
    .end annotation

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$g$a;->f:Landroidx/media/MediaBrowserServiceCompat$g;

    iput-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$g$a;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$g$a;->f:Landroidx/media/MediaBrowserServiceCompat$g;

    iget-object p0, p0, Landroidx/media/MediaBrowserServiceCompat$g$a;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0, p0}, Landroidx/media/MediaBrowserServiceCompat$g;->m(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method
