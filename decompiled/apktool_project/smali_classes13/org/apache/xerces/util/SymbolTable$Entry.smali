.class public final Lorg/apache/xerces/util/SymbolTable$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/util/SymbolTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final characters:[C

.field public next:Lorg/apache/xerces/util/SymbolTable$Entry;

.field public final symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/xerces/util/SymbolTable$Entry;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p1, v1, v2, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    iput-object p2, p0, Lorg/apache/xerces/util/SymbolTable$Entry;->next:Lorg/apache/xerces/util/SymbolTable$Entry;

    return-void
.end method

.method public constructor <init>([CIILorg/apache/xerces/util/SymbolTable$Entry;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p3, [C

    iput-object v0, p0, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/xerces/util/SymbolTable$Entry;->next:Lorg/apache/xerces/util/SymbolTable$Entry;

    return-void
.end method
