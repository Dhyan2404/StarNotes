.class public Lorg/mortbay/io/ByteArrayBuffer$CaseInsensitive;
.super Lorg/mortbay/io/ByteArrayBuffer;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/io/Buffer$CaseInsensitve;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/io/ByteArrayBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaseInsensitive"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mortbay/io/ByteArrayBuffer;-><init>([BIII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/mortbay/io/Buffer;

    invoke-virtual {p0, p1}, Lorg/mortbay/io/ByteArrayBuffer;->equalsIgnoreCase(Lorg/mortbay/io/Buffer;)Z

    move-result p0

    return p0
.end method
