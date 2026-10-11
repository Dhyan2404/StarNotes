.class public Lcom/alibaba/fastjson2/writer/ObjectWriterProvider$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/writer/ObjectWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider$a;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider$a;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider$a;->a:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    return-void
.end method
