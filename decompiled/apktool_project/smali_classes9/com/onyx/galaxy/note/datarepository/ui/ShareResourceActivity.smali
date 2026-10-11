.class public final Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceActivity;
.super Lcom/onyx/galaxy/note/common/base/BaseNavigationActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceActivity;",
        "Lcom/onyx/galaxy/note/common/base/BaseNavigationActivity;",
        "()V",
        "getNavigationResId",
        "",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getNavigationResId()I
    .locals 0

    sget p0, Lcom/onyx/galaxy/note/R$navigation;->share_resource_navigation:I

    return p0
.end method
