.class public abstract Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "LayoutElement"
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;->a:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLength(C)I
    .locals 1

    const/16 p0, 0x42

    if-eq p1, p0, :cond_2

    const/16 p0, 0x56

    const/4 v0, 0x0

    if-eq p1, p0, :cond_3

    const/16 p0, 0x48

    if-eq p1, p0, :cond_1

    const/16 p0, 0x49

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method
