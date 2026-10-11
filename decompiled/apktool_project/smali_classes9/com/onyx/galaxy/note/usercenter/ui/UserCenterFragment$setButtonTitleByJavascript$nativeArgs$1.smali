.class public final Lcom/onyx/galaxy/note/usercenter/ui/UserCenterFragment$setButtonTitleByJavascript$nativeArgs$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/ui/UserCenterFragment;->r0(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "com/onyx/galaxy/note/usercenter/ui/UserCenterFragment$setButtonTitleByJavascript$nativeArgs$1",
        "",
        "",
        "a",
        "Ljava/lang/String;",
        "getTitle",
        "()Ljava/lang/String;",
        "title",
        "",
        "b",
        "Z",
        "getHighlight",
        "()Z",
        "highlight",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/UserCenterFragment$setButtonTitleByJavascript$nativeArgs$1;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/onyx/galaxy/note/usercenter/ui/UserCenterFragment$setButtonTitleByJavascript$nativeArgs$1;->b:Z

    return-void
.end method


# virtual methods
.method public final getHighlight()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/UserCenterFragment$setButtonTitleByJavascript$nativeArgs$1;->b:Z

    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/UserCenterFragment$setButtonTitleByJavascript$nativeArgs$1;->a:Ljava/lang/String;

    return-object p0
.end method
