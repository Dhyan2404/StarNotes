.class public final Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$initColorLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout$ColorSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/StrokeAndColorLayout$initColorLayout$1",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout$ColorSelectedListener;",
        "onSelected",
        "",
        "color",
        "",
        "colorIndex",
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


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$initColorLayout$1;->a:Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(II)V
    .locals 0

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$initColorLayout$1;->a:Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->access$getShapeAttributes$p(Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->setColor(I)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$initColorLayout$1;->a:Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->access$getListener$p(Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;)Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$initColorLayout$1;->a:Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;->access$getShapeAttributes$p(Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onyx/galaxy/note/editor/view/StrokeAndColorLayout$ShapeAttributesChangeListener;->onShapeAttributesChanged(Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;)V

    return-void
.end method
