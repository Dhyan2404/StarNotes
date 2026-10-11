.class public abstract Lnet/sf/saxon/type/BuiltInType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lnet/sf/saxon/z/IntHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/z/IntHashMap<",
            "Lnet/sf/saxon/type/SchemaType;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/type/SchemaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/z/IntHashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lnet/sf/saxon/z/IntHashMap;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/type/BuiltInType;->a:Lnet/sf/saxon/z/IntHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/type/BuiltInType;->b:Ljava/util/Map;

    const/16 v0, 0x23d

    invoke-static {}, Lnet/sf/saxon/type/AnySimpleType;->getInstance()Lnet/sf/saxon/type/AnySimpleType;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sf/saxon/type/BuiltInType;->register(ILnet/sf/saxon/type/SchemaType;)V

    const/16 v0, 0x23c

    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sf/saxon/type/BuiltInType;->register(ILnet/sf/saxon/type/SchemaType;)V

    const/16 v0, 0x276

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sf/saxon/type/BuiltInType;->register(ILnet/sf/saxon/type/SchemaType;)V

    const/16 v0, 0x23f

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sf/saxon/type/BuiltInType;->register(ILnet/sf/saxon/type/SchemaType;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSchemaType(I)Lnet/sf/saxon/type/SchemaType;
    .locals 2

    sget-object v0, Lnet/sf/saxon/type/BuiltInType;->a:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/type/SchemaType;

    if-nez v1, :cond_1

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eqz v1, :cond_0

    sget-object v1, Lnet/sf/saxon/type/BuiltInListType;->NMTOKENS:Lnet/sf/saxon/type/BuiltInListType;

    :cond_0
    invoke-virtual {v0, p0}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lnet/sf/saxon/type/SchemaType;

    :cond_1
    return-object v1
.end method

.method public static getSchemaTypeByLocalName(Ljava/lang/String;)Lnet/sf/saxon/type/SchemaType;
    .locals 2

    sget-object v0, Lnet/sf/saxon/type/BuiltInType;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/type/SchemaType;

    if-nez v1, :cond_1

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eqz v1, :cond_0

    sget-object v1, Lnet/sf/saxon/type/BuiltInListType;->NMTOKENS:Lnet/sf/saxon/type/BuiltInListType;

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lnet/sf/saxon/type/SchemaType;

    :cond_1
    return-object v1
.end method

.method public static register(ILnet/sf/saxon/type/SchemaType;)V
    .locals 1

    sget-object v0, Lnet/sf/saxon/type/BuiltInType;->a:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lnet/sf/saxon/type/BuiltInType;->b:Ljava/util/Map;

    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
