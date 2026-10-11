.class public Landroid/support/v4/media/MediaBrowserCompat$d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$d;->m(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Landroid/support/v4/media/MediaBrowserCompat$d;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$d;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$cb",
            "val$mediaId"
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$d$c;->g:Landroid/support/v4/media/MediaBrowserCompat$d;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$d$c;->e:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$d$c;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$d$c;->e:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    iget-object p0, p0, Landroid/support/v4/media/MediaBrowserCompat$d$c;->f:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onError(Ljava/lang/String;)V

    return-void
.end method
