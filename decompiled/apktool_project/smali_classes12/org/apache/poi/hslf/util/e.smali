.class public final synthetic Lorg/apache/poi/hslf/util/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/util/e;->e:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/util/e;->e:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    check-cast p1, Lorg/apache/poi/util/LocaleID;

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->a(Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;Lorg/apache/poi/util/LocaleID;)Ljava/util/AbstractMap$SimpleEntry;

    move-result-object p0

    return-object p0
.end method
