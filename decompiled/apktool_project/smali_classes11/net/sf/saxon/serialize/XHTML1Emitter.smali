.class public Lnet/sf/saxon/serialize/XHTML1Emitter;
.super Lnet/sf/saxon/serialize/XMLEmitter;
.source "SourceFile"


# static fields
.field public static q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final r:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/serialize/XHTML1Emitter;->q:Ljava/util/Set;

    const-string v2, "area"

    const-string v3, "base"

    const-string v4, "basefont"

    const-string v5, "br"

    const-string v6, "col"

    const-string v7, "embed"

    const-string v8, "frame"

    const-string v9, "hr"

    const-string v10, "img"

    const-string v11, "input"

    const-string v12, "isindex"

    const-string v13, "link"

    const-string v14, "meta"

    const-string v15, "param"

    filled-new-array/range {v2 .. v15}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/serialize/XHTML1Emitter;->r:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/serialize/XMLEmitter;-><init>()V

    return-void
.end method


# virtual methods
.method public final l(Lnet/sf/saxon/om/NodeName;)Z
    .locals 0

    const-string p0, "http://www.w3.org/1999/xhtml"

    invoke-interface {p1, p0}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public writeEmptyElementTagCloser(Ljava/lang/String;Lnet/sf/saxon/om/NodeName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lnet/sf/saxon/serialize/XHTML1Emitter;->l(Lnet/sf/saxon/om/NodeName;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/sf/saxon/serialize/XHTML1Emitter;->q:Ljava/util/Set;

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object p1, Lnet/sf/saxon/str/StringConstants;->EMPTY_TAG_END_XHTML:[B

    invoke-interface {p0, p1}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    sget-object v0, Lnet/sf/saxon/str/StringConstants;->EMPTY_TAG_MIDDLE:[B

    invoke-interface {p2, v0}, Lnet/sf/saxon/str/UnicodeWriter;->writeAscii([B)V

    iget-object p2, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    invoke-interface {p2, p1}, Lnet/sf/saxon/str/UnicodeWriter;->write(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/serialize/Emitter;->writer:Lnet/sf/saxon/str/UnicodeWriter;

    const/16 p1, 0x3e

    invoke-interface {p0, p1}, Lnet/sf/saxon/str/UnicodeWriter;->writeCodePoint(I)V

    :goto_0
    return-void
.end method
