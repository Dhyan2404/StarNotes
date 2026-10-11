.class public Lnet/sf/saxon/serialize/SerializationProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Properties;

.field public b:Lnet/sf/saxon/serialize/CharacterMapIndex;

.field public c:Lnet/sf/saxon/event/FilterFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/serialize/SerializationProperties;->a:Ljava/util/Properties;

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lnet/sf/saxon/serialize/SerializationProperties;->a:Ljava/util/Properties;

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;Lnet/sf/saxon/serialize/CharacterMapIndex;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lnet/sf/saxon/serialize/SerializationProperties;->a:Ljava/util/Properties;

    .line 7
    iput-object p2, p0, Lnet/sf/saxon/serialize/SerializationProperties;->b:Lnet/sf/saxon/serialize/CharacterMapIndex;

    return-void
.end method


# virtual methods
.method public combineWith(Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/serialize/SerializationProperties;
    .locals 9

    iget-object v0, p0, Lnet/sf/saxon/serialize/SerializationProperties;->b:Lnet/sf/saxon/serialize/CharacterMapIndex;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/serialize/CharacterMapIndex;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/serialize/SerializationProperties;->getCharacterMapIndex()Lnet/sf/saxon/serialize/CharacterMapIndex;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/serialize/SerializationProperties;->c:Lnet/sf/saxon/event/FilterFactory;

    if-nez v1, :cond_2

    iget-object v1, p1, Lnet/sf/saxon/serialize/SerializationProperties;->c:Lnet/sf/saxon/event/FilterFactory;

    :cond_2
    new-instance v2, Ljava/util/Properties;

    invoke-virtual {p1}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperties()Ljava/util/Properties;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperties()Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperties()Ljava/util/Properties;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "cdata-section-elements"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "use-character-maps"

    if-nez v6, :cond_5

    const-string v6, "suppress-indentation"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    :goto_1
    invoke-virtual {p1, v4}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_3

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lnet/sf/saxon/serialize/CharacterMapIndex;->copy()Lnet/sf/saxon/serialize/CharacterMapIndex;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/serialize/SerializationProperties;->getCharacterMapIndex()Lnet/sf/saxon/serialize/CharacterMapIndex;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/serialize/CharacterMapIndex;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/serialize/CharacterMap;

    invoke-virtual {v5}, Lnet/sf/saxon/serialize/CharacterMap;->getName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lnet/sf/saxon/serialize/CharacterMapIndex;->putCharacterMap(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/serialize/CharacterMap;)V

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_8
    new-instance p0, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-direct {p0, v2, v0}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>(Ljava/util/Properties;Lnet/sf/saxon/serialize/CharacterMapIndex;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/serialize/SerializationProperties;->setValidationFactory(Lnet/sf/saxon/event/FilterFactory;)V

    return-object p0
.end method

.method public getCharacterMapIndex()Lnet/sf/saxon/serialize/CharacterMapIndex;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/SerializationProperties;->b:Lnet/sf/saxon/serialize/CharacterMapIndex;

    return-object p0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/SerializationProperties;->a:Ljava/util/Properties;

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperties()Ljava/util/Properties;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValidationFactory()Lnet/sf/saxon/event/FilterFactory;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/SerializationProperties;->c:Lnet/sf/saxon/event/FilterFactory;

    return-object p0
.end method

.method public makeSequenceNormalizer(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/SequenceNormalizer;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/SerializationProperties;->getValidationFactory()Lnet/sf/saxon/event/FilterFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/SerializationProperties;->getValidationFactory()Lnet/sf/saxon/event/FilterFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/sf/saxon/event/FilterFactory;->makeFilter(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/serialize/SerializationProperties;->a:Ljava/util/Properties;

    const-string v0, "item-separator"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "#absent"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lnet/sf/saxon/event/SequenceNormalizerWithItemSeparator;

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lnet/sf/saxon/event/SequenceNormalizerWithItemSeparator;-><init>(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/str/UnicodeString;)V

    return-object v0

    :cond_2
    :goto_0
    new-instance p0, Lnet/sf/saxon/event/SequenceNormalizerWithSpaceSeparator;

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/SequenceNormalizerWithSpaceSeparator;-><init>(Lnet/sf/saxon/event/Receiver;)V

    return-object p0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/serialize/SerializationProperties;->a:Ljava/util/Properties;

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setValidationFactory(Lnet/sf/saxon/event/FilterFactory;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/serialize/SerializationProperties;->c:Lnet/sf/saxon/event/FilterFactory;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/serialize/SerializationProperties;->a:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/sf/saxon/serialize/SerializationProperties;->a:Ljava/util/Properties;

    invoke-virtual {v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/serialize/SerializationProperties;->b:Lnet/sf/saxon/serialize/CharacterMapIndex;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/CharacterMapIndex;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/serialize/CharacterMap;

    invoke-virtual {v1}, Lnet/sf/saxon/serialize/CharacterMap;->getName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
