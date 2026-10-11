.class Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/convert/xwpf/handler/NumberingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverrideLevel"
.end annotation


# instance fields
.field private final abstractNumId:I

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final numId:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;->map:Ljava/util/Map;

    iput p1, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;->numId:I

    iput p2, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;->abstractNumId:I

    return-void
.end method

.method public static synthetic access$400(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;->abstractNumId:I

    return p0
.end method

.method public static synthetic access$500(Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;->map:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public addLvlStartMap(II)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OverrideLevel{numId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;->numId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", abstractNumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;->abstractNumId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", map="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/convert/xwpf/handler/NumberingHandler$OverrideLevel;->map:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
