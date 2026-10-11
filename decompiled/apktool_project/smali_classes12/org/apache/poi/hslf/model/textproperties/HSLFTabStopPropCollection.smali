.class public Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;
.super Lorg/apache/poi/hslf/model/textproperties/TextProp;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "tabStops"


# instance fields
.field private final tabStops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/high16 v0, 0x100000

    const-string v1, "tabStops"

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v2, v0, v1}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(IILjava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->tabStops:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/model/textproperties/TextProp;-><init>(Lorg/apache/poi/hslf/model/textproperties/TextProp;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->tabStops:Ljava/util/List;

    .line 5
    iget-object p0, p1, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->tabStops:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/z7h;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/z7h;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/a8h;

    invoke-direct {p1, v0}, Lcom/sunia/HTREnginev2/a8h;-><init>(Ljava/util/List;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getGenericProperties()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static readTabStops(Lorg/apache/poi/util/LittleEndianInput;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/util/LittleEndianInput;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v3

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;->fromNativeId(I)Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    move-result-object v4

    new-instance v5, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;

    invoke-direct {v5, v3, v4}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;-><init>(ILorg/apache/poi/sl/usermodel/TabStop$TabStopType;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static writeTabStops(Lorg/apache/poi/util/LittleEndianOutput;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/util/LittleEndianOutput;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->getPosition()I

    move-result v1

    invoke-interface {p0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {v0}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->getType()Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;->LEFT:Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->getType()Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    move-result-object v0

    :goto_1
    iget v0, v0, Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;->nativeId:I

    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addTabStop(Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->tabStops:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearTabs()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->tabStops:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->copy()Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;-><init>(Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hslf/model/textproperties/TextProp;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->copy()Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;

    invoke-super {p0, p1}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->tabStops:Ljava/util/List;

    iget-object p1, p1, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->tabStops:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/x7h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/x7h;-><init>(Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;)V

    new-instance v1, Lcom/sunia/HTREnginev2/y7h;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/y7h;-><init>(Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;)V

    const-string p0, "base"

    const-string v2, "tabStops"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->tabStops:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getTabStops()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->tabStops:Ljava/util/List;

    return-object p0
.end method

.method public getValue()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->tabStops:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->tabStops:Ljava/util/List;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public parseProperty([BI)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->tabStops:Ljava/util/List;

    new-instance v0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([BI)V

    invoke-static {v0}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->readTabStops(Lorg/apache/poi/util/LittleEndianInput;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->tabStops:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;

    if-nez v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->getType()Lorg/apache/poi/sl/usermodel/TabStop$TabStopType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string p0, " ]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeProperty(Ljava/io/OutputStream;)V
    .locals 1

    new-instance v0, Lorg/apache/poi/util/LittleEndianOutputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/util/LittleEndianOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object p0, p0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->tabStops:Ljava/util/List;

    invoke-static {v0, p0}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->writeTabStops(Lorg/apache/poi/util/LittleEndianOutput;Ljava/util/List;)V

    return-void
.end method
