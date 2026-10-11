.class public Lorg/apache/commons/collections4/properties/PropertiesFactory;
.super Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory<",
        "Ljava/util/Properties;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections4/properties/PropertiesFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/collections4/properties/PropertiesFactory;

    invoke-direct {v0}, Lorg/apache/commons/collections4/properties/PropertiesFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/collections4/properties/PropertiesFactory;->INSTANCE:Lorg/apache/commons/collections4/properties/PropertiesFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/collections4/properties/AbstractPropertiesFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createProperties()Ljava/util/Properties;
    .locals 0

    new-instance p0, Ljava/util/Properties;

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    return-object p0
.end method
