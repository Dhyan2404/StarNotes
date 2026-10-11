.class public Lnet/sf/saxon/serialize/charcode/JavaCharacterSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/serialize/charcode/CharacterSet;


# static fields
.field public static final c:B = 0x1t

.field public static final d:B = 0x2t

.field public static map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/nio/charset/Charset;",
            "Lnet/sf/saxon/serialize/charcode/JavaCharacterSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/nio/charset/CharsetEncoder;

.field public final b:[B


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/sf/saxon/serialize/charcode/JavaCharacterSet;->b:[B

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/serialize/charcode/JavaCharacterSet;->a:Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method public static declared-synchronized makeCharSet(Ljava/nio/charset/Charset;)Lnet/sf/saxon/serialize/charcode/JavaCharacterSet;
    .locals 3

    const-class v0, Lnet/sf/saxon/serialize/charcode/JavaCharacterSet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnet/sf/saxon/serialize/charcode/JavaCharacterSet;->map:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lnet/sf/saxon/serialize/charcode/JavaCharacterSet;->map:Ljava/util/HashMap;

    :cond_0
    sget-object v1, Lnet/sf/saxon/serialize/charcode/JavaCharacterSet;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/serialize/charcode/JavaCharacterSet;

    if-nez v1, :cond_1

    new-instance v1, Lnet/sf/saxon/serialize/charcode/JavaCharacterSet;

    invoke-direct {v1, p0}, Lnet/sf/saxon/serialize/charcode/JavaCharacterSet;-><init>(Ljava/nio/charset/Charset;)V

    sget-object v2, Lnet/sf/saxon/serialize/charcode/JavaCharacterSet;->map:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getCanonicalName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/charcode/JavaCharacterSet;->a:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final inCharset(I)Z
    .locals 5

    const/16 v0, 0x7f

    const/4 v1, 0x1

    if-gt p1, v0, :cond_0

    return v1

    :cond_0
    const v0, 0xffff

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-gt p1, v0, :cond_4

    iget-object v0, p0, Lnet/sf/saxon/serialize/charcode/JavaCharacterSet;->b:[B

    aget-byte v0, v0, p1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    if-ne v0, v3, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/serialize/charcode/JavaCharacterSet;->a:Ljava/nio/charset/CharsetEncoder;

    int-to-char v4, p1

    invoke-virtual {v0, v4}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lnet/sf/saxon/serialize/charcode/JavaCharacterSet;->b:[B

    aput-byte v1, p0, p1

    return v1

    :cond_3
    iget-object p0, p0, Lnet/sf/saxon/serialize/charcode/JavaCharacterSet;->b:[B

    aput-byte v3, p0, p1

    return v2

    :cond_4
    new-array v0, v3, [C

    invoke-static {p1}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->highSurrogate(I)C

    move-result v3

    aput-char v3, v0, v2

    invoke-static {p1}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->lowSurrogate(I)C

    move-result p1

    aput-char p1, v0, v1

    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/serialize/charcode/JavaCharacterSet;->a:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
