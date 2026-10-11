.class final Lcom/onyx/galaxy/note/message/handler/NotificationHandler$loadSidebarImage$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/message/handler/NotificationHandler;->loadSidebarImage(Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/drawable/Drawable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/graphics/drawable/Drawable;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $binding:Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/message/handler/NotificationHandler$loadSidebarImage$1;->$binding:Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/message/handler/NotificationHandler$loadSidebarImage$1;->invoke(Landroid/graphics/drawable/Drawable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/message/handler/NotificationHandler$loadSidebarImage$1;->$binding:Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutSidebarNotificationBinding;->container:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method
