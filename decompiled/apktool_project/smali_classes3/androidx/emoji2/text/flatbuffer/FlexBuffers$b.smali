.class public abstract Landroidx/emoji2/text/flatbuffer/FlexBuffers$b;
.super Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field protected final size:I


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/bdl;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;-><init>(Lcom/sunia/HTREnginev2/bdl;II)V

    iget-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$a;->a:Lcom/sunia/HTREnginev2/bdl;

    sub-int/2addr p2, p3

    invoke-static {p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->b(Lcom/sunia/HTREnginev2/bdl;II)I

    move-result p1

    iput p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$b;->size:I

    return-void
.end method


# virtual methods
.method public size()I
    .locals 0

    iget p0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$b;->size:I

    return p0
.end method
