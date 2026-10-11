.class public final synthetic Lcom/sunia/HTREnginev2/y3e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/trans/CommandLineOptions$ParamSetter;


# instance fields
.field public final synthetic a:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/y3e;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final setParam(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/y3e;->a:Ljava/util/Map;

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/trans/CommandLineOptions;->a(Ljava/util/Map;Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V

    return-void
.end method
