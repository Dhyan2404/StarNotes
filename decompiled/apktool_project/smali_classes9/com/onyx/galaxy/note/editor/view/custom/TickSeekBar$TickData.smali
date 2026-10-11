.class public final Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar$TickData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TickData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar$TickData;",
        "",
        "",
        "a",
        "F",
        "getLocation",
        "()F",
        "setLocation",
        "(F)V",
        "location",
        "",
        "b",
        "I",
        "getColor",
        "()I",
        "setColor",
        "(I)V",
        "color",
        "<init>",
        "(FI)V",
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
.field public a:F

.field public b:I


# direct methods
.method public constructor <init>(FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar$TickData;->a:F

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar$TickData;->b:I

    return-void
.end method


# virtual methods
.method public final getColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar$TickData;->b:I

    return p0
.end method

.method public final getLocation()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar$TickData;->a:F

    return p0
.end method

.method public final setColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar$TickData;->b:I

    return-void
.end method

.method public final setLocation(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/custom/TickSeekBar$TickData;->a:F

    return-void
.end method
