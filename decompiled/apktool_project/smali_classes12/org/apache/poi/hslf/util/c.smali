.class public final synthetic Lorg/apache/poi/hslf/util/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    invoke-static {p1}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->b(Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
