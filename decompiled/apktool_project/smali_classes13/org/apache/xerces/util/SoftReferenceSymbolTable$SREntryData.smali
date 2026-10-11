.class public final Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/util/SoftReferenceSymbolTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SREntryData"
.end annotation


# instance fields
.field public final characters:[C

.field public final symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    const/4 p0, 0x0

    array-length v1, v0

    invoke-virtual {p1, p0, v1, v0, p0}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    new-array p1, p4, [C

    iput-object p1, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    const/4 p0, 0x0

    invoke-static {p2, p3, p1, p0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
