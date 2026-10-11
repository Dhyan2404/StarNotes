.class public Lcom/sunia/HTREnginev2/w9j$a;
.super Landroid/graphics/drawable/InsetDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/w9j;->D(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/w9j;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/w9j;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 6

    iput-object p1, p0, Lcom/sunia/HTREnginev2/w9j$a;->e:Lcom/sunia/HTREnginev2/w9j;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method


# virtual methods
.method public getMinimumHeight()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getMinimumWidth()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
