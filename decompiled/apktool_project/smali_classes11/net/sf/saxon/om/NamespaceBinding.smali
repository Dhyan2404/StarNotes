.class public final Lnet/sf/saxon/om/NamespaceBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NamespaceBindingSet;


# static fields
.field public static final DEFAULT_UNDECLARATION:Lnet/sf/saxon/om/NamespaceBinding;

.field public static final EMPTY_ARRAY:[Lnet/sf/saxon/om/NamespaceBinding;

.field public static final XML:Lnet/sf/saxon/om/NamespaceBinding;


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/sf/saxon/om/NamespaceBinding;

    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/om/NamespaceBinding;->XML:Lnet/sf/saxon/om/NamespaceBinding;

    new-instance v0, Lnet/sf/saxon/om/NamespaceBinding;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/om/NamespaceBinding;->DEFAULT_UNDECLARATION:Lnet/sf/saxon/om/NamespaceBinding;

    const/4 v0, 0x0

    new-array v0, v0, [Lnet/sf/saxon/om/NamespaceBinding;

    sput-object v0, Lnet/sf/saxon/om/NamespaceBinding;->EMPTY_ARRAY:[Lnet/sf/saxon/om/NamespaceBinding;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/om/NamespaceBinding;->e:Ljava/lang/String;

    iput-object p2, p0, Lnet/sf/saxon/om/NamespaceBinding;->f:Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static makeNamespaceBinding(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lnet/sf/saxon/om/NamespaceBinding;
    .locals 1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lnet/sf/saxon/om/NamespaceBinding;->DEFAULT_UNDECLARATION:Lnet/sf/saxon/om/NamespaceBinding;

    return-object p0

    :cond_0
    const-string v0, "xml"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lnet/sf/saxon/om/NamespaceBinding;->XML:Lnet/sf/saxon/om/NamespaceBinding;

    return-object p0

    :cond_1
    new-instance v0, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/om/NamespaceBinding;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/om/NamespaceBinding;->e:Ljava/lang/String;

    check-cast p1, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/om/NamespaceBinding;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/om/NamespaceBinding;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getURI()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/om/NamespaceBinding;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/om/NamespaceBinding;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/om/NamespaceBinding;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/om/NamespaceBinding;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object p0, p0, Lnet/sf/saxon/om/NamespaceBinding;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isDefaultUndeclaration()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/om/NamespaceBinding;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/om/NamespaceBinding;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isXmlNamespace()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/om/NamespaceBinding;->e:Ljava/lang/String;

    const-string v0, "xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/om/NamespaceBinding;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/tree/jiter/MonoIterator;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/jiter/MonoIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/om/NamespaceBinding;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/om/NamespaceBinding;->f:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
