.class public abstract Lorg/apache/xerces/impl/dv/SchemaDVFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "org.apache.xerces.impl.dv.xs.SchemaDVFactoryImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lorg/apache/xerces/impl/dv/SchemaDVFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/dv/DVFactoryException;
        }
    .end annotation

    .line 1
    const-string v0, "org.apache.xerces.impl.dv.xs.SchemaDVFactoryImpl"

    invoke-static {v0}, Lorg/apache/xerces/impl/dv/SchemaDVFactory;->getInstance(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/SchemaDVFactory;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/SchemaDVFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/impl/dv/DVFactoryException;
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-static {}, Lorg/apache/xerces/impl/dv/ObjectFactory;->d()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/xerces/impl/dv/ObjectFactory;->h(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/dv/SchemaDVFactory;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lorg/apache/xerces/impl/dv/DVFactoryException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Schema factory class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " does not extend from SchemaDVFactory."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xerces/impl/dv/DVFactoryException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract createTypeList(Ljava/lang/String;Ljava/lang/String;SLorg/apache/xerces/impl/dv/XSSimpleType;Lorg/apache/xerces/xs/XSObjectList;)Lorg/apache/xerces/impl/dv/XSSimpleType;
.end method

.method public abstract createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLorg/apache/xerces/impl/dv/XSSimpleType;Lorg/apache/xerces/xs/XSObjectList;)Lorg/apache/xerces/impl/dv/XSSimpleType;
.end method

.method public abstract createTypeUnion(Ljava/lang/String;Ljava/lang/String;S[Lorg/apache/xerces/impl/dv/XSSimpleType;Lorg/apache/xerces/xs/XSObjectList;)Lorg/apache/xerces/impl/dv/XSSimpleType;
.end method

.method public abstract getBuiltInType(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/XSSimpleType;
.end method

.method public abstract getBuiltInTypes()Lorg/apache/xerces/util/SymbolHash;
.end method
