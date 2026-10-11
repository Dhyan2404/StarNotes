.class public Lorg/apache/commons/compress/harmony/pack200/PackingOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final KEEP:Ljava/lang/String; = "keep"

.field public static final PASS:Ljava/lang/String; = "pass"

.field public static final SEGMENT_LIMIT:J = 0xf4240L

.field public static final STRIP:Ljava/lang/String; = "strip"

.field public static final q:[Lorg/objectweb/asm/Attribute;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:J

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n:Z

.field public o:Ljava/lang/String;

.field public p:[Lorg/objectweb/asm/Attribute;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/objectweb/asm/Attribute;

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->q:[Lorg/objectweb/asm/Attribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->a:Z

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->c:Z

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->d:J

    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->e:I

    const-string v0, "keep"

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->f:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->g:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->h:Ljava/util/List;

    const-string v0, "pass"

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->i:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->k:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->l:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->m:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/Map;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/objectweb/asm/Attribute;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_6

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;

    iget-object v4, v3, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p3}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->addContext(I)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_0

    const-string v2, "error"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$ErrorAttribute;

    invoke-direct {v1, v0, p3}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$ErrorAttribute;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    const-string v2, "strip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$StripAttribute;

    invoke-direct {v1, v0, p3}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$StripAttribute;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    const-string v2, "pass"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$PassAttribute;

    invoke-direct {v1, v0, p3}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$PassAttribute;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;

    invoke-direct {v2, v0, v1, p3}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v2

    :goto_2
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-void
.end method

.method public addClassAttributeAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->j:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addCodeAttributeAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->m:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addFieldAttributeAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->k:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addMethodAttributeAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->l:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addPassFile(Ljava/lang/String;)V
    .locals 3

    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->h:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Ljava/lang/String;

    :goto_0
    return-object p3
.end method

.method public getDeflateHint()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getEffort()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->e:I

    return p0
.end method

.method public getLogFile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->o:Ljava/lang/String;

    return-object p0
.end method

.method public getModificationTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getSegmentLimit()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->d:J

    return-wide v0
.end method

.method public getUnknownAttributeAction()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getUnknownAttributePrototypes()[Lorg/objectweb/asm/Attribute;
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->p:[Lorg/objectweb/asm/Attribute;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->j:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->a(Ljava/util/List;Ljava/util/Map;I)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->l:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->a(Ljava/util/List;Ljava/util/Map;I)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->k:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->a(Ljava/util/List;Ljava/util/Map;I)V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->m:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->a(Ljava/util/List;Ljava/util/Map;I)V

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->q:[Lorg/objectweb/asm/Attribute;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/objectweb/asm/Attribute;

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->p:[Lorg/objectweb/asm/Attribute;

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->p:[Lorg/objectweb/asm/Attribute;

    return-object p0
.end method

.method public getUnknownClassAttributeAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->j:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnknownCodeAttributeAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->m:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnknownFieldAttributeAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->k:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnknownMethodAttributeAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->l:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isGzip()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->a:Z

    return p0
.end method

.method public isKeepDeflateHint()Z
    .locals 1

    const-string v0, "keep"

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->f:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isKeepFileOrder()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->c:Z

    return p0
.end method

.method public isPassFile(Ljava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public isStripDebug()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->b:Z

    return p0
.end method

.method public isVerbose()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->n:Z

    return p0
.end method

.method public removePassFile(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->h:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDeflateHint(Ljava/lang/String;)V
    .locals 2

    const-string v0, "keep"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad argument: -H "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ? deflate hint should be either true, false or keep (default)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->f:Ljava/lang/String;

    return-void
.end method

.method public setEffort(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->e:I

    return-void
.end method

.method public setGzip(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->a:Z

    return-void
.end method

.method public setKeepFileOrder(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->c:Z

    return-void
.end method

.method public setLogFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->o:Ljava/lang/String;

    return-void
.end method

.method public setModificationTime(Ljava/lang/String;)V
    .locals 2

    const-string v0, "keep"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "latest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad argument: -m "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ? transmit modtimes should be either latest or keep (default)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->g:Ljava/lang/String;

    return-void
.end method

.method public setQuiet(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->n:Z

    return-void
.end method

.method public setSegmentLimit(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->d:J

    return-void
.end method

.method public setStripDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->b:Z

    return-void
.end method

.method public setUnknownAttributeAction(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->i:Ljava/lang/String;

    const-string p0, "pass"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "error"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "strip"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect option for -U, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public setVerbose(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->n:Z

    return-void
.end method
