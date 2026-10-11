.class public Lnet/sf/saxon/z/IntRepeatIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntIterator;


# instance fields
.field public final a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sf/saxon/z/IntRepeatIterator;->a:I

    iput p2, p0, Lnet/sf/saxon/z/IntRepeatIterator;->b:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntRepeatIterator;->b:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()I
    .locals 1

    iget v0, p0, Lnet/sf/saxon/z/IntRepeatIterator;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/z/IntRepeatIterator;->b:I

    iget p0, p0, Lnet/sf/saxon/z/IntRepeatIterator;->a:I

    return p0
.end method
