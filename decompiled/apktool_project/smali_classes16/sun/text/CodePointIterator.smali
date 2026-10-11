.class public abstract Lsun/text/CodePointIterator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DONE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/CharSequence;)Lsun/text/CodePointIterator;
    .locals 1

    .line 3
    new-instance v0, Lsun/text/CharSequenceCodePointIterator;

    invoke-direct {v0, p0}, Lsun/text/CharSequenceCodePointIterator;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static create(Ljava/text/CharacterIterator;)Lsun/text/CodePointIterator;
    .locals 1

    .line 4
    new-instance v0, Lsun/text/CharacterIteratorCodePointIterator;

    invoke-direct {v0, p0}, Lsun/text/CharacterIteratorCodePointIterator;-><init>(Ljava/text/CharacterIterator;)V

    return-object v0
.end method

.method public static create([C)Lsun/text/CodePointIterator;
    .locals 1

    .line 1
    new-instance v0, Lsun/text/CharArrayCodePointIterator;

    invoke-direct {v0, p0}, Lsun/text/CharArrayCodePointIterator;-><init>([C)V

    return-object v0
.end method

.method public static create([CII)Lsun/text/CodePointIterator;
    .locals 1

    .line 2
    new-instance v0, Lsun/text/CharArrayCodePointIterator;

    invoke-direct {v0, p0, p1, p2}, Lsun/text/CharArrayCodePointIterator;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method public abstract charIndex()I
.end method

.method public abstract next()I
.end method

.method public abstract prev()I
.end method

.method public abstract setToLimit()V
.end method

.method public abstract setToStart()V
.end method
