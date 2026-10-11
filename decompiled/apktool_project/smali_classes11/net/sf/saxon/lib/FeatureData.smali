.class public Lnet/sf/saxon/lib/FeatureData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static featureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/lib/FeatureData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public code:I

.field public defaultValue:Ljava/lang/Object;

.field public editions:Ljava/lang/String;

.field public type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public uri:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/lib/FeatureData;->uri:Ljava/lang/String;

    iput p2, p0, Lnet/sf/saxon/lib/FeatureData;->code:I

    iput-object p3, p0, Lnet/sf/saxon/lib/FeatureData;->editions:Ljava/lang/String;

    iput-object p4, p0, Lnet/sf/saxon/lib/FeatureData;->type:Ljava/lang/Class;

    iput-object p5, p0, Lnet/sf/saxon/lib/FeatureData;->defaultValue:Ljava/lang/Object;

    return-void
.end method

.method public static init()V
    .locals 15

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/allow-external-functions"

    const/4 v3, 0x1

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/Boolean;

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v1, v7

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/allow-multithreading"

    const/4 v10, 0x2

    const-string v11, "EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    move-object v13, v14

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/allow-old-java-uri-format"

    const/4 v10, 0x3

    const-string v11, "PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/allowSyntaxExtensions"

    const/4 v10, 0x4

    const-string v11, "PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/assertionsCanSeeComments"

    const/4 v10, 0x5

    const-string v11, "EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/collation-uri-resolver"

    const/4 v3, 0x6

    const-string v4, "HE PE EE"

    const-class v5, Lnet/sf/saxon/lib/CollationURIResolver;

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/collation-uri-resolver-class"

    const/4 v3, 0x7

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/collection-finder"

    const/16 v3, 0x8

    const-string v4, "HE PE EE"

    const-class v5, Lnet/sf/saxon/lib/CollectionFinder;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/collection-finder-class"

    const/16 v3, 0x9

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/compile-with-tracing"

    const/16 v10, 0xc

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/configuration"

    const/16 v3, 0xd

    const-string v4, "HE PE EE"

    const-class v5, Lnet/sf/saxon/Configuration;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/configuration-file"

    const/16 v3, 0xe

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/debugByteCode"

    const/16 v10, 0xf

    const-string v11, "EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/debugByteCodeDir"

    const/16 v3, 0x10

    const-string v4, "EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/defaultCollation"

    const/16 v3, 0x11

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/defaultCollection"

    const/16 v3, 0x12

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/defaultCountry"

    const/16 v3, 0x13

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/defaultLanguage"

    const/16 v3, 0x14

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/defaultRegexEngine"

    const/16 v3, 0x15

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/disableXslEvaluate"

    const/16 v10, 0x16

    const-string v11, "EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/displayByteCode"

    const/16 v10, 0x17

    const-string v11, "EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/validation"

    const/16 v10, 0x18

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/dtd-validation-recoverable"

    const/16 v10, 0x19

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/eagerEvaluation"

    const/16 v10, 0x1a

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/entityResolverClass"

    const/16 v3, 0x1b

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/environmentVariableResolver"

    const/16 v3, 0x1c

    const-string v4, "HE PE EE"

    const-class v5, Lnet/sf/saxon/lib/EnvironmentVariableResolver;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/environmentVariableResolverClass"

    const/16 v3, 0x1d

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/errorListenerClass"

    const/16 v3, 0x1e

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/expandAttributeDefaults"

    const/16 v10, 0x1f

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/expathFileDeleteTemporaryFiles"

    const/16 v10, 0x20

    const-string v11, "PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/generateByteCode"

    const/16 v10, 0x21

    const-string v11, "EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/ignoreSAXSourceParser"

    const/16 v10, 0x22

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/implicitSchemaImports"

    const/16 v10, 0x23

    const-string v11, "EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/lazyConstructionMode"

    const/16 v10, 0x24

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/licenseFileLocation"

    const/16 v3, 0x25

    const-string v4, "PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/linenumbering"

    const/16 v10, 0x26

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/markDefaultedAttributes"

    const/16 v10, 0x27

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/maxCompiledClasses"

    const/16 v3, 0x28

    const-string v4, "EE"

    const-class v5, Ljava/lang/Integer;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/messageEmitterClass"

    const/16 v3, 0x29

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/moduleURIResolver"

    const/16 v3, 0x2a

    const-string v4, "HE PE EE"

    const-class v5, Lnet/sf/saxon/lib/ModuleURIResolver;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/moduleURIResolverClass"

    const/16 v3, 0x2b

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/monitorHotSpotByteCode"

    const/16 v10, 0x2c

    const-string v11, "EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/multipleSchemaImports"

    const/16 v10, 0x2d

    const-string v11, "EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/namePool"

    const/16 v3, 0x2e

    const-string v4, "HE PE EE"

    const-class v5, Lnet/sf/saxon/om/NamePool;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/occurrenceLimits"

    const/16 v3, 0x2f

    const-string v4, "EE"

    const-class v5, Ljava/lang/Object;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/optimizationLevel"

    const/16 v3, 0x30

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/Object;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/outputURIResolver"

    const/16 v3, 0x31

    const-string v4, "HE PE EE"

    const-class v5, Lnet/sf/saxon/lib/OutputURIResolver;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/outputURIResolverClass"

    const/16 v3, 0x32

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/preEvaluateDocFunction"

    const/16 v10, 0x33

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/recognize-uri-query-parameters"

    const/16 v10, 0x35

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/recoveryPolicy"

    const/16 v3, 0x36

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/Integer;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/recoveryPolicyName"

    const/16 v3, 0x37

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/resultDocumentThreads"

    const/16 v3, 0x38

    const-string v4, "EE"

    const-class v5, Ljava/lang/Integer;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/retain-dtd-attribute-types"

    const/16 v10, 0x39

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/schemaURIResolver"

    const/16 v3, 0x3a

    const-string v4, "EE"

    const-class v5, Lnet/sf/saxon/lib/SchemaURIResolver;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/schemaURIResolverClass"

    const/16 v3, 0x3b

    const-string v4, "EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/schema-validation"

    const/16 v3, 0x3c

    const-string v4, "EE"

    const-class v5, Ljava/lang/Integer;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/schema-validation-mode"

    const/16 v3, 0x3d

    const-string v4, "EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/serializerFactoryClass"

    const/16 v3, 0x3e

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/sourceParserClass"

    const/16 v3, 0x3f

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/sourceResolverClass"

    const/16 v3, 0x40

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/stableCollectionUri"

    const/16 v10, 0x41

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/stableUnparsedText"

    const/16 v10, 0x42

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/standardErrorOutputFile"

    const/16 v3, 0x43

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/streamability"

    const/16 v3, 0x44

    const-string v4, "EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/strictStreamability"

    const/16 v10, 0x45

    const-string v11, "EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/streamingFallback"

    const/16 v10, 0x46

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/strip-whitespace"

    const/16 v3, 0x47

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/styleParserClass"

    const/16 v3, 0x48

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/suppressEvaluationExpiryWarning"

    const/16 v10, 0x49

    const-string v11, "PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/suppressXPathWarnings"

    const/16 v10, 0x4a

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/suppressXsltNamespaceCheck"

    const/16 v10, 0x4b

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/thresholdForCompilingTypes"

    const/16 v3, 0x4c

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/Integer;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/timing"

    const/16 v10, 0x4d

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/trace-external-functions"

    const/16 v10, 0x4e

    const-string v11, "PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/traceListener"

    const/16 v3, 0x4f

    const-string v4, "HE PE EE"

    const-class v5, Lnet/sf/saxon/lib/TraceListener;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/traceListenerClass"

    const/16 v3, 0x50

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/traceListenerOutputFile"

    const/16 v3, 0x51

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/trace-optimizer-decisions"

    const/16 v10, 0x52

    const-string v11, "PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/treeModel"

    const/16 v3, 0x53

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/Integer;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/treeModelName"

    const/16 v3, 0x54

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/unparsedTextURIResolver"

    const/16 v3, 0x55

    const-string v4, "HE PE EE"

    const-class v5, Lnet/sf/saxon/lib/UnparsedTextURIResolver;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/unparsedTextURIResolverClass"

    const/16 v3, 0x56

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/uriResolverClass"

    const/16 v3, 0x57

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/use-pi-disable-output-escaping"

    const/16 v10, 0x58

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/use-typed-value-cache"

    const/16 v10, 0x59

    const-string v11, "EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/useXsiSchemaLocation"

    const/16 v10, 0x5a

    const-string v11, "EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/validation-comments"

    const/16 v10, 0x5b

    const-string v11, "EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/validation-warnings"

    const/16 v10, 0x5c

    const-string v11, "EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/version-warning"

    const/16 v10, 0x5d

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/xinclude-aware"

    const/16 v10, 0x5e

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/xml-version"

    const/16 v3, 0x5f

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/parserFeature?uri="

    const/16 v10, 0x60

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/parserProperty?uri="

    const/16 v10, 0x61

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/xqueryAllowUpdate"

    const/16 v10, 0x62

    const-string v11, "EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/xqueryConstructionMode"

    const/16 v3, 0x63

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/xqueryDefaultElementNamespace"

    const/16 v3, 0x64

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/Object;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/xqueryDefaultFunctionNamespace"

    const/16 v3, 0x65

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/Object;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/xqueryEmptyLeast"

    const/16 v10, 0x66

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/xqueryInheritNamespaces"

    const/16 v10, 0x67

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/xqueryMultipleModuleImports"

    const/16 v10, 0x68

    const-string v11, "EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/xqueryPreserveBoundarySpace"

    const/16 v10, 0x69

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/xqueryPreserveNamespaces"

    const/16 v10, 0x6a

    const-string v11, "HE PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/xqueryRequiredContextItemType"

    const/16 v3, 0x6b

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/xquerySchemaAware"

    const/16 v10, 0x6c

    const-string v11, "EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/xqueryStaticErrorListenerClass"

    const/16 v3, 0x6d

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/xqueryVersion"

    const/16 v3, 0x6e

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/xsd-version"

    const/16 v3, 0x6f

    const-string v4, "EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/enableAssertions"

    const/16 v10, 0x70

    const-string v11, "PE EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/initialMode"

    const/16 v3, 0x71

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/initialTemplate"

    const/16 v3, 0x72

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/xsltSchemaAware"

    const/16 v10, 0x73

    const-string v11, "EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/stylesheetErrorListener"

    const/16 v3, 0x74

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/stylesheetURIResolver"

    const/16 v3, 0x75

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/xsltVersion"

    const/16 v3, 0x76

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/regexBacktrackingLimit"

    const/16 v3, 0x77

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/Integer;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/xpathVersionForXsd"

    const/16 v3, 0x78

    const-string v4, "EE"

    const-class v5, Ljava/lang/Integer;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/xpathVersionForXslt"

    const/16 v3, 0x79

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/Integer;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/thresholdForFunctionInlining"

    const/16 v3, 0x7a

    const-string v4, "EE"

    const-class v5, Ljava/lang/Integer;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/thresholdForHotspotByteCode"

    const/16 v3, 0x7b

    const-string v4, "EE"

    const-class v5, Ljava/lang/Integer;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/allowedProtocols"

    const/16 v3, 0x7c

    const-string v4, "EE"

    const-class v5, Ljava/lang/Object;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/retainNodeForDiagnostics"

    const/16 v10, 0x7d

    const-string v11, "EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/lib/FeatureData;

    const-string v9, "http://saxon.sf.net/feature/allowUnresolvedSchemaComponents"

    const/16 v10, 0x7e

    const-string v11, "EE"

    const-class v12, Ljava/lang/Boolean;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/zipUriPattern"

    const/16 v3, 0x7f

    const-string v4, "EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/saxon-resource-resolver"

    const/16 v3, 0x80

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/Object;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lnet/sf/saxon/lib/FeatureData;->featureList:Ljava/util/List;

    new-instance v7, Lnet/sf/saxon/lib/FeatureData;

    const-string v2, "http://saxon.sf.net/feature/saxon-resource-resolver-class"

    const/16 v3, 0x81

    const-string v4, "HE PE EE"

    const-class v5, Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/lib/FeatureData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
