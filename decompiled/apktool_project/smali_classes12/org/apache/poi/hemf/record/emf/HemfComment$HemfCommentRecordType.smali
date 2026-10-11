.class public final enum Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfComment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HemfCommentRecordType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

.field public static final enum emfBeginGroup:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

.field public static final enum emfEndGroup:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

.field public static final enum emfGeneric:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

.field public static final enum emfMultiFormats:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

.field public static final enum emfPlus:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

.field public static final enum emfPublic:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

.field public static final enum emfSpool:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

.field public static final enum emfUnicodeEnd:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

.field public static final enum emfUnicodeString:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

.field public static final enum emfWMF:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;


# instance fields
.field public final constructor:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "+",
            "Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;",
            ">;"
        }
    .end annotation
.end field

.field public final id:J

.field public final isEmfPublic:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 30

    new-instance v7, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    const-string v1, "emfGeneric"

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    new-instance v5, Lcom/sunia/HTREnginev2/ngh;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/ngh;-><init>()V

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;-><init>(Ljava/lang/String;IJLjava/util/function/Supplier;Z)V

    sput-object v7, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfGeneric:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    new-instance v1, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    const-string v9, "emfSpool"

    const/4 v10, 0x1

    const-wide/16 v11, 0x0

    new-instance v13, Lcom/sunia/HTREnginev2/ngh;

    invoke-direct {v13}, Lcom/sunia/HTREnginev2/ngh;-><init>()V

    const/4 v14, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;-><init>(Ljava/lang/String;IJLjava/util/function/Supplier;Z)V

    sput-object v1, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfSpool:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    new-instance v2, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    const-string v16, "emfPlus"

    const/16 v17, 0x2

    const-wide/32 v18, 0x2b464d45

    new-instance v20, Lcom/sunia/HTREnginev2/ogh;

    invoke-direct/range {v20 .. v20}, Lcom/sunia/HTREnginev2/ogh;-><init>()V

    const/16 v21, 0x0

    move-object v15, v2

    invoke-direct/range {v15 .. v21}, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;-><init>(Ljava/lang/String;IJLjava/util/function/Supplier;Z)V

    sput-object v2, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfPlus:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    new-instance v3, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    const-string v9, "emfPublic"

    const/4 v10, 0x3

    const-wide/32 v11, 0x43494447

    const/4 v13, 0x0

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;-><init>(Ljava/lang/String;IJLjava/util/function/Supplier;Z)V

    sput-object v3, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfPublic:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    new-instance v4, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    const-string v16, "emfBeginGroup"

    const/16 v17, 0x4

    const-wide/16 v18, 0x2

    new-instance v20, Lcom/sunia/HTREnginev2/pgh;

    invoke-direct/range {v20 .. v20}, Lcom/sunia/HTREnginev2/pgh;-><init>()V

    const/16 v21, 0x1

    move-object v15, v4

    invoke-direct/range {v15 .. v21}, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;-><init>(Ljava/lang/String;IJLjava/util/function/Supplier;Z)V

    sput-object v4, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfBeginGroup:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    new-instance v5, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    const-string v9, "emfEndGroup"

    const/4 v10, 0x5

    const-wide/16 v11, 0x3

    new-instance v13, Lcom/sunia/HTREnginev2/qgh;

    invoke-direct {v13}, Lcom/sunia/HTREnginev2/qgh;-><init>()V

    const/4 v14, 0x1

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;-><init>(Ljava/lang/String;IJLjava/util/function/Supplier;Z)V

    sput-object v5, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfEndGroup:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    new-instance v6, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    const-string v16, "emfMultiFormats"

    const/16 v17, 0x6

    const-wide/32 v18, 0x40000004

    new-instance v20, Lcom/sunia/HTREnginev2/rgh;

    invoke-direct/range {v20 .. v20}, Lcom/sunia/HTREnginev2/rgh;-><init>()V

    move-object v15, v6

    invoke-direct/range {v15 .. v21}, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;-><init>(Ljava/lang/String;IJLjava/util/function/Supplier;Z)V

    sput-object v6, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfMultiFormats:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    new-instance v15, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    const-string v9, "emfWMF"

    const/4 v10, 0x7

    const-wide/32 v11, -0x7fffffff

    new-instance v13, Lcom/sunia/HTREnginev2/sgh;

    invoke-direct {v13}, Lcom/sunia/HTREnginev2/sgh;-><init>()V

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;-><init>(Ljava/lang/String;IJLjava/util/function/Supplier;Z)V

    sput-object v15, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfWMF:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    new-instance v8, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    const-string v17, "emfUnicodeString"

    const/16 v18, 0x8

    const-wide/16 v19, 0x40

    new-instance v21, Lcom/sunia/HTREnginev2/tgh;

    invoke-direct/range {v21 .. v21}, Lcom/sunia/HTREnginev2/tgh;-><init>()V

    const/16 v22, 0x1

    move-object/from16 v16, v8

    invoke-direct/range {v16 .. v22}, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;-><init>(Ljava/lang/String;IJLjava/util/function/Supplier;Z)V

    sput-object v8, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfUnicodeString:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    new-instance v9, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    const-string v24, "emfUnicodeEnd"

    const/16 v25, 0x9

    const-wide/16 v26, 0x80

    new-instance v28, Lcom/sunia/HTREnginev2/tgh;

    invoke-direct/range {v28 .. v28}, Lcom/sunia/HTREnginev2/tgh;-><init>()V

    const/16 v29, 0x1

    move-object/from16 v23, v9

    invoke-direct/range {v23 .. v29}, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;-><init>(Ljava/lang/String;IJLjava/util/function/Supplier;Z)V

    sput-object v9, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfUnicodeEnd:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    move-object v7, v15

    filled-new-array/range {v0 .. v9}, [Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->$VALUES:[Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJLjava/util/function/Supplier;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/Supplier<",
            "+",
            "Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->id:J

    iput-object p5, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->constructor:Ljava/util/function/Supplier;

    iput-boolean p6, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->isEmfPublic:Z

    return-void
.end method

.method public static getById(JZ)Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;
    .locals 6

    invoke-static {}, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->values()[Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-wide v4, v3, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->id:J

    cmp-long v4, v4, p0

    if-nez v4, :cond_0

    iget-boolean v4, v3, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->isEmfPublic:Z

    if-ne v4, p2, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfGeneric:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;
    .locals 1

    const-class v0, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->$VALUES:[Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    invoke-virtual {v0}, [Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    return-object v0
.end method
