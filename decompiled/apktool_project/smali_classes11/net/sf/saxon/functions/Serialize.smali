.class public Lnet/sf/saxon/functions/Serialize;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# static fields
.field public static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/value/SequenceType;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/value/SequenceType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:[Ljava/lang/String;

.field public final i:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/functions/Serialize;->j:Ljava/util/Map;

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->SINGLE_BOOLEAN:Lnet/sf/saxon/value/SequenceType;

    const-string v2, "allow-duplicate-names"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "byte-order-mark"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v2}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrMore()Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    const-string v4, "cdata-section-elements"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lnet/sf/saxon/value/SequenceType;->SINGLE_STRING:Lnet/sf/saxon/value/SequenceType;

    const-string v4, "doctype-public"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "doctype-system"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "encoding"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "escape-uri-attributes"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "html-version"

    sget-object v5, Lnet/sf/saxon/value/SequenceType;->SINGLE_DECIMAL:Lnet/sf/saxon/value/SequenceType;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "include-content-type"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "indent"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "item-separator"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "json-node-output-method"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "media-type"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "method"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "normalization-form"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "omit-xml-declaration"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "standalone"

    sget-object v5, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_BOOLEAN:Lnet/sf/saxon/value/SequenceType;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrMore()Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    const-string v5, "suppress-indentation"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "undeclare-prefixes"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lnet/sf/saxon/ma/map/MapType;->ANY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    const/16 v6, 0x4000

    invoke-static {v4, v6}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    const-string v6, "use-character-maps"

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "version"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    const/16 v4, 0x14

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/functions/Serialize;->k:Ljava/util/Map;

    const-string v4, "attribute-order"

    invoke-virtual {v2}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrMore()Lnet/sf/saxon/value/SequenceType;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "canonical"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "character-representation"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "double-space"

    invoke-virtual {v2}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrMore()Lnet/sf/saxon/value/SequenceType;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lnet/sf/saxon/value/SequenceType;->SINGLE_INTEGER:Lnet/sf/saxon/value/SequenceType;

    const-string v6, "indent-spaces"

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "line-length"

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "newline"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "recognize-binary"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "require-well-formed"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "single-quotes"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "supply-source-locator"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrMore()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 22

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    const-string v1, "allow-duplicate-names"

    const-string v2, "byte-order-mark"

    const-string v3, "cdata-section-elements"

    const-string v4, "doctype-public"

    const-string v5, "doctype-system"

    const-string v6, "encoding"

    const-string v7, "escape-uri-attributes"

    const-string v8, "html-version"

    const-string v9, "include-content-type"

    const-string v10, "indent"

    const-string v11, "item-separator"

    const-string v12, "json-node-output-method"

    const-string v13, "media-type"

    const-string v14, "method"

    const-string v15, "normalization-form"

    const-string v16, "omit-xml-declaration"

    const-string v17, "standalone"

    const-string v18, "suppress-indentation"

    const-string v19, "undeclare-prefixes"

    const-string v20, "use-character-maps"

    const-string v21, "version"

    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/functions/Serialize;->h:[Ljava/lang/String;

    const-string v2, "attribute-order"

    const-string v3, "canonical"

    const-string v4, "character-representation"

    const-string v5, "double-space"

    const-string v6, "indent-spaces"

    const-string v7, "line-length"

    const-string v8, "newline"

    const-string v9, "property-order"

    const-string v10, "recognize-binary"

    const-string v11, "require-well-formed"

    const-string v12, "single-quotes"

    const-string v13, "supply-source-locator"

    const-string v14, "suppress-indentation"

    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/functions/Serialize;->i:[Ljava/lang/String;

    return-void
.end method

.method public static a(Lnet/sf/saxon/ma/map/MapItem;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/ma/map/MapItem;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapItem;->keyValuePairs()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/ma/map/KeyValuePair;

    iget-object v2, v1, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    instance-of v3, v2, Lnet/sf/saxon/value/StringValue;

    const-string v4, "XPTY0004"

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {v3}, Lnet/sf/saxon/value/StringValue;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_1

    sget-object v3, Lnet/sf/saxon/value/SequenceType;->SINGLE_STRING:Lnet/sf/saxon/value/SequenceType;

    iget-object v1, v1, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {v3, v1, p1}, Lnet/sf/saxon/value/SequenceType;->matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Values in a character map must all be single strings. Found "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/value/AtomicValue;->show()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Keys in a character map must all be one-character strings. Found "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/value/AtomicValue;->show()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SEPM0016"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Keys in a character map must all be strings. Found a value of type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object p0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Q{http://saxon.sf.net/}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeOptionsParameter()Lnet/sf/saxon/functions/OptionsParameter;
    .locals 6

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrMore()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/functions/OptionsParameter;

    invoke-direct {v1}, Lnet/sf/saxon/functions/OptionsParameter;-><init>()V

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->SINGLE_BOOLEAN:Lnet/sf/saxon/value/SequenceType;

    const-string v3, "allow-duplicate-names"

    invoke-virtual {v1, v3, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v3, "byte-order-mark"

    invoke-virtual {v1, v3, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v3, "cdata-section-elements"

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object v4

    invoke-virtual {v1, v3, v0, v4}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/Sequence;)V

    sget-object v3, Lnet/sf/saxon/value/SequenceType;->SINGLE_STRING:Lnet/sf/saxon/value/SequenceType;

    const-string v4, "doctype-public"

    invoke-virtual {v1, v4, v3}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v4, "doctype-system"

    invoke-virtual {v1, v4, v3}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v4, "encoding"

    invoke-virtual {v1, v4, v3}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v4, "escape-uri-attributes"

    invoke-virtual {v1, v4, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v4, "html-version"

    sget-object v5, Lnet/sf/saxon/value/SequenceType;->SINGLE_DECIMAL:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1, v4, v5}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v4, "include-content-type"

    invoke-virtual {v1, v4, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v4, "indent"

    invoke-virtual {v1, v4, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v4, "item-separator"

    invoke-virtual {v1, v4, v3}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v4, "json-node-output-method"

    invoke-virtual {v1, v4, v3}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v4, "media-type"

    invoke-virtual {v1, v4, v3}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v4, "method"

    invoke-virtual {v1, v4, v3}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v4, "normalization-form"

    invoke-virtual {v1, v4, v3}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v4, "omit-xml-declaration"

    invoke-virtual {v1, v4, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v4, "standalone"

    sget-object v5, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_BOOLEAN:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1, v4, v5}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v4, "suppress-indentation"

    invoke-virtual {v1, v4, v0}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v4, "undeclare-prefixes"

    invoke-virtual {v1, v4, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    sget-object v4, Lnet/sf/saxon/ma/map/MapType;->ANY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    const/16 v5, 0x4000

    invoke-static {v4, v5}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    const-string v5, "use-character-maps"

    invoke-virtual {v1, v5, v4}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v4, "version"

    invoke-virtual {v1, v4, v3}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v4, "attribute-order"

    invoke-static {v4}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lnet/sf/saxon/value/SequenceType;->ATOMIC_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1, v4, v5}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v4, "canonical"

    invoke-static {v4}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v4, "character-representation"

    invoke-static {v4}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v4, "double-space"

    invoke-static {v4}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v0, "indent-spaces"

    invoke-static {v0}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lnet/sf/saxon/value/SequenceType;->SINGLE_INTEGER:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1, v0, v4}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v0, "line-length"

    invoke-static {v0}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v0, "newline"

    invoke-static {v0}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v0, "property-order"

    invoke-static {v0}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lnet/sf/saxon/value/SequenceType;->STRING_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1, v0, v3}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v0, "recognize-binary"

    invoke-static {v0}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v0, "require-well-formed"

    invoke-static {v0}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v0, "single-quotes"

    invoke-static {v0}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v0, "supply-source-locator"

    invoke-static {v0}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    return-object v1
.end method

.method public static toCharacterMap(Lnet/sf/saxon/ma/map/MapItem;)Lnet/sf/saxon/serialize/CharacterMap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapItem;->keys()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/z/IntHashMap;

    invoke-direct {v1}, Lnet/sf/saxon/z/IntHashMap;-><init>()V

    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AtomicIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    invoke-virtual {p0, v2}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/om/GroundedValue;->head()Lnet/sf/saxon/om/Item;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lnet/sf/saxon/str/UnicodeString;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lnet/sf/saxon/str/UnicodeString;->codePointAt(J)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In the serialization parameters, the character map contains two entries for the character \\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v1, 0x10000

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SEPM0018"

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "In the serialization parameter for the character map, each character to be mapped must be a single Unicode character"

    const-string v1, "SEPM0016"

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/om/StructuredQName;

    const-string v0, "http://www.w3.org/2010/xslt-xquery-serialization"

    const-string v2, "serialization-parameters"

    const-string v3, "output"

    invoke-direct {p0, v3, v0, v2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lnet/sf/saxon/serialize/CharacterMap;

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/serialize/CharacterMap;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/z/IntHashMap;)V

    return-object v0
.end method


# virtual methods
.method public final b(Lnet/sf/saxon/ma/map/MapItem;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/ma/map/MapItem;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {v0}, Lnet/sf/saxon/ma/map/HashTrieMap;-><init>()V

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/ma/map/MapItem;->keys()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Lnet/sf/saxon/tree/iter/AtomicIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v2

    if-eqz v2, :cond_3

    instance-of v3, v2, Lnet/sf/saxon/value/StringValue;

    const/4 v4, 0x0

    const/16 v5, 0xf

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/functions/Serialize;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-direct {v6, v5, v3, v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    const-string v4, "XPTY0004"

    invoke-virtual {v6, v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v4

    sget-object v5, Lnet/sf/saxon/functions/Serialize;->j:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/value/SequenceType;

    sget-object v5, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {p2, v4, v3, v6, v5}, Lnet/sf/saxon/type/TypeHierarchy;->applyFunctionConversionRules(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/sf/saxon/ma/map/MapItem;->addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/MapItem;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v3, v2, Lnet/sf/saxon/value/QNameValue;

    if-eqz v3, :cond_3

    sget-object v3, Lnet/sf/saxon/functions/AccessorFn$Component;->NAMESPACE:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2, v3}, Lnet/sf/saxon/value/AtomicValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    const-string v6, "http://saxon.sf.net/"

    invoke-static {v6}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v6

    invoke-virtual {v3, v6}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {v3}, Lnet/sf/saxon/value/QualifiedNameValue;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/functions/Serialize;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-direct {v6, v5, v3, v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p1, v2}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v4

    sget-object v5, Lnet/sf/saxon/functions/Serialize;->k:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/value/SequenceType;

    sget-object v5, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {p2, v4, v3, v6, v5}, Lnet/sf/saxon/type/TypeHierarchy;->applyFunctionConversionRules(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/sf/saxon/ma/map/MapItem;->addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/MapItem;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "A serialization parameter supplied with a QName key must have non-absent namespace"

    const-string p2, "SEPM0017"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object v0
.end method

.method public final c(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/StringValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p2, :cond_5

    instance-of v0, p2, Lnet/sf/saxon/om/NodeInfo;

    const-string v1, "XPTY0004"

    if-eqz v0, :cond_1

    check-cast p2, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "http://www.w3.org/2010/xslt-xquery-serialization"

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "serialization-parameters"

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lnet/sf/saxon/serialize/SerializationParamsHandler;

    invoke-direct {p0}, Lnet/sf/saxon/serialize/SerializationParamsHandler;-><init>()V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/serialize/SerializationParamsHandler;->setSerializationParams(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/SerializationParamsHandler;->getSerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Second argument to fn:serialize() must be an element named {http://www.w3.org/2010/xslt-xquery-serialization}serialization-parameters"

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of v0, p2, Lnet/sf/saxon/ma/map/MapItem;

    if-eqz v0, :cond_4

    check-cast p2, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {p2}, Lnet/sf/saxon/ma/map/MapItem;->keys()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AtomicIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v2, v1, Lnet/sf/saxon/value/QNameValue;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {v2}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v3, v2}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Lnet/sf/saxon/ma/map/MapItem;->addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v0

    iget-object v0, v0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->optionDetails:Lnet/sf/saxon/functions/OptionsParameter;

    invoke-virtual {v0, p2, p3}, Lnet/sf/saxon/functions/OptionsParameter;->processSuppliedOptions(Lnet/sf/saxon/ma/map/MapItem;Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lnet/sf/saxon/functions/Serialize;->f(Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object p0

    goto :goto_1

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Second argument to fn:serialize() must either be an element named {http://www.w3.org/2010/xslt-xquery-serialization}serialization-parameters, or a map (if using XPath 3.1)"

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lnet/sf/saxon/serialize/SerializationProperties;

    new-instance p2, Ljava/util/Properties;

    invoke-direct {p2}, Ljava/util/Properties;-><init>()V

    invoke-direct {p0, p2}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>(Ljava/util/Properties;)V

    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperties()Ljava/util/Properties;

    move-result-object p2

    const-string v0, "method"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, "xml"

    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_6
    const-string v0, "omit-xml-declaration"

    invoke-virtual {p2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v1, "true"

    invoke-virtual {p2, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_7
    :try_start_0
    new-instance p2, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {p2}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    new-instance v0, Lnet/sf/saxon/serialize/UnicodeWriterResult;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lnet/sf/saxon/serialize/UnicodeWriterResult;-><init>(Lnet/sf/saxon/str/UnicodeWriter;Ljava/lang/String;)V

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object v1

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p3

    invoke-virtual {p3}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p3

    invoke-virtual {v1, v0, p0, p3}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    invoke-static {p1, p0}, Lnet/sf/saxon/event/SequenceCopier;->copySequence(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/event/Receiver;)V

    new-instance p0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p2}, Lnet/sf/saxon/str/UnicodeBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "SENR0001"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetErrorCode(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/Serialize;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/StringValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    aget-object v0, p2, v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    array-length v1, p2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    aget-object p2, p2, v2

    .line 3
    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    .line 4
    :goto_0
    invoke-virtual {p0, v0, p2, p1}, Lnet/sf/saxon/functions/Serialize;->c(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 4

    iget-object p0, p0, Lnet/sf/saxon/functions/Serialize;->h:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 4

    iget-object p0, p0, Lnet/sf/saxon/functions/Serialize;->i:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final f(Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/serialize/SerializationProperties;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")",
            "Lnet/sf/saxon/serialize/SerializationProperties;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    new-instance v1, Lnet/sf/saxon/serialize/CharacterMapIndex;

    invoke-direct {v1}, Lnet/sf/saxon/serialize/CharacterMapIndex;-><init>()V

    const-string v2, "allow-duplicate-names"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Sequence;

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Lnet/sf/saxon/functions/Serialize;->m(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    const-string v2, "byte-order-mark"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Sequence;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Lnet/sf/saxon/functions/Serialize;->m(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    const-string v2, "cdata-section-elements"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Sequence;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {p0, v3, v4}, Lnet/sf/saxon/functions/Serialize;->j(Lnet/sf/saxon/om/Sequence;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_2
    const-string v2, "doctype-public"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Sequence;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_3
    const-string v2, "doctype-system"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Sequence;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_4
    const-string v2, "encoding"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Sequence;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_5
    const-string v2, "escape-uri-attributes"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Sequence;

    if-eqz v3, :cond_6

    invoke-virtual {p0, v3}, Lnet/sf/saxon/functions/Serialize;->m(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_6
    const-string v2, "html-version"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Sequence;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_7
    const-string v2, "include-content-type"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Sequence;

    if-eqz v3, :cond_8

    invoke-virtual {p0, v3}, Lnet/sf/saxon/functions/Serialize;->m(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_8
    const-string v2, "indent"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Sequence;

    if-eqz v3, :cond_9

    invoke-virtual {p0, v3}, Lnet/sf/saxon/functions/Serialize;->m(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_9
    const-string v2, "item-separator"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Sequence;

    if-eqz v3, :cond_a

    invoke-interface {v3}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_a
    const-string v2, "json-node-output-method"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Sequence;

    if-eqz v3, :cond_b

    invoke-virtual {p0, v3}, Lnet/sf/saxon/functions/Serialize;->i(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_b
    const-string v2, "media-type"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Sequence;

    if-eqz v3, :cond_c

    invoke-interface {v3}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_c
    const-string v2, "method"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Sequence;

    if-eqz v3, :cond_d

    invoke-virtual {p0, v3}, Lnet/sf/saxon/functions/Serialize;->i(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_d
    const-string v2, "normalization-form"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Sequence;

    if-eqz v3, :cond_e

    invoke-interface {v3}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_e
    const-string v2, "omit-xml-declaration"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Sequence;

    if-eqz v3, :cond_f

    invoke-virtual {p0, v3}, Lnet/sf/saxon/functions/Serialize;->m(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_f
    const-string v2, "standalone"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Sequence;

    if-eqz v3, :cond_10

    invoke-virtual {p0, v3}, Lnet/sf/saxon/functions/Serialize;->l(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_10
    const-string v2, "suppress-indentation"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Sequence;

    if-eqz v3, :cond_11

    invoke-virtual {p0, v3, v4}, Lnet/sf/saxon/functions/Serialize;->j(Lnet/sf/saxon/om/Sequence;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_11
    const-string v2, "undeclare-prefixes"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Sequence;

    if-eqz v3, :cond_12

    invoke-virtual {p0, v3}, Lnet/sf/saxon/functions/Serialize;->m(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_12
    const-string v2, "use-character-maps"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/Sequence;

    if-eqz v3, :cond_13

    invoke-virtual {p0, v3, p2}, Lnet/sf/saxon/functions/Serialize;->h(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/serialize/CharacterMap;

    move-result-object p2

    new-instance v3, Lnet/sf/saxon/om/StructuredQName;

    const-string v5, ""

    const-string v6, "charMap"

    const-string v7, ""

    invoke-direct {v3, v7, v5, v6}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3, p2}, Lnet/sf/saxon/serialize/CharacterMapIndex;->putCharacterMap(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/serialize/CharacterMap;)V

    const-string p2, "charMap"

    invoke-virtual {v0, v2, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_13
    const-string p2, "version"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/Sequence;

    if-eqz v2, :cond_14

    invoke-interface {v2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v2

    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_14
    const-string p2, "attribute-order"

    invoke-static {p2}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/Sequence;

    if-eqz p2, :cond_15

    const/4 v2, 0x1

    invoke-virtual {p0, p2, v2}, Lnet/sf/saxon/functions/Serialize;->j(Lnet/sf/saxon/om/Sequence;Z)Ljava/lang/String;

    move-result-object p2

    const-string v2, "{http://saxon.sf.net/}attribute-order"

    invoke-virtual {v0, v2, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_15
    const-string p2, "canonical"

    invoke-static {p2}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/Sequence;

    if-eqz p2, :cond_16

    const-string v2, "{http://saxon.sf.net/}canonical"

    invoke-virtual {p0, p2}, Lnet/sf/saxon/functions/Serialize;->m(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_16
    const-string p2, "character-representation"

    invoke-static {p2}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/Sequence;

    if-eqz p2, :cond_17

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p2

    const-string v2, "{http://saxon.sf.net/}character-representation"

    invoke-virtual {v0, v2, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_17
    const-string p2, "double-space"

    invoke-static {p2}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/Sequence;

    if-eqz p2, :cond_18

    const-string v2, "{http://saxon.sf.net/}double-space"

    invoke-virtual {p0, p2, v4}, Lnet/sf/saxon/functions/Serialize;->j(Lnet/sf/saxon/om/Sequence;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_18
    const-string p2, "indent-spaces"

    invoke-static {p2}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/Sequence;

    if-eqz p2, :cond_19

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p2

    const-string v2, "{http://saxon.sf.net/}indent-spaces"

    invoke-virtual {v0, v2, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_19
    const-string p2, "internal-dtd-subset"

    invoke-static {p2}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/Sequence;

    if-eqz p2, :cond_1a

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p2

    const-string v2, "{http://saxon.sf.net/}internal-dtd-subset"

    invoke-virtual {v0, v2, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1a
    const-string p2, "line-length"

    invoke-static {p2}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/Sequence;

    if-eqz p2, :cond_1b

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p2

    const-string v2, "{http://saxon.sf.net/}line-length"

    invoke-virtual {v0, v2, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1b
    const-string p2, "newline"

    invoke-static {p2}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/Sequence;

    if-eqz p2, :cond_1c

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p2

    const-string v2, "{http://saxon.sf.net/}newline"

    invoke-virtual {v0, v2, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1c
    const-string p2, "property-order"

    invoke-static {p2}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/Sequence;

    if-eqz p2, :cond_1d

    const-string v2, "{http://saxon.sf.net/}property-order"

    invoke-virtual {p0, p2}, Lnet/sf/saxon/functions/Serialize;->k(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1d
    const-string p2, "recognize-binary"

    invoke-static {p2}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/Sequence;

    if-eqz p2, :cond_1e

    const-string v2, "{http://saxon.sf.net/}recognize-binary"

    invoke-virtual {p0, p2}, Lnet/sf/saxon/functions/Serialize;->m(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1e
    const-string p2, "require-well-formed"

    invoke-static {p2}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/Sequence;

    if-eqz p2, :cond_1f

    const-string v2, "{http://saxon.sf.net/}require-well-formed"

    invoke-virtual {p0, p2}, Lnet/sf/saxon/functions/Serialize;->m(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1f
    const-string p2, "single-quotes"

    invoke-static {p2}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/Sequence;

    if-eqz p2, :cond_20

    const-string v2, "{http://saxon.sf.net/}single-quotes"

    invoke-virtual {p0, p2}, Lnet/sf/saxon/functions/Serialize;->m(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_20
    const-string p2, "supply-source-locator"

    invoke-static {p2}, Lnet/sf/saxon/functions/Serialize;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/om/Sequence;

    if-eqz p1, :cond_21

    const-string p2, "{http://saxon.sf.net/}supply-source-locator"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/Serialize;->m(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_21
    new-instance p0, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>(Ljava/util/Properties;Lnet/sf/saxon/serialize/CharacterMapIndex;)V

    return-object p0
.end method

.method public final h(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/serialize/CharacterMap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/ma/map/MapItem;

    invoke-static {p0, p2}, Lnet/sf/saxon/functions/Serialize;->a(Lnet/sf/saxon/ma/map/MapItem;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/functions/Serialize;->toCharacterMap(Lnet/sf/saxon/ma/map/MapItem;)Lnet/sf/saxon/serialize/CharacterMap;

    move-result-object p0

    return-object p0
.end method

.method public final i(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/value/QNameValue;

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/QNameValue;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->NAMESPACE:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/QNameValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lnet/sf/saxon/functions/AccessorFn$Component;->LOCALNAME:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/value/QNameValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final j(Lnet/sf/saxon/om/Sequence;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, v0, Lnet/sf/saxon/value/QNameValue;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/value/QNameValue;

    const-string v1, " Q{"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/sf/saxon/functions/AccessorFn$Component;->NAMESPACE:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/value/QNameValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/sf/saxon/functions/AccessorFn$Component;->LOCALNAME:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/value/QNameValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    instance-of v1, v0, Lnet/sf/saxon/value/StringValue;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " *"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid serialization parameter value: expected sequence of QNames "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const-string p2, "(or *) "

    goto :goto_1

    :cond_2
    const-string p2, ""

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SEPM0017"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final k(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/value/EmptySequence;

    if-eqz v0, :cond_0

    const-string p0, "omit"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/value/BooleanValue;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/Serialize;->m(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final m(Lnet/sf/saxon/om/Sequence;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "yes"

    goto :goto_0

    :cond_0
    const-string p0, "no"

    :goto_0
    return-object p0
.end method
