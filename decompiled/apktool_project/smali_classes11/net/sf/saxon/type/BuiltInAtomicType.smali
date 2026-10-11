.class public Lnet/sf/saxon/type/BuiltInAtomicType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/type/AtomicType;
.implements Lnet/sf/saxon/type/ItemTypeWithSequenceTypeCache;


# static fields
.field public static final ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final BASE64_BINARY:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final BYTE:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final DATE:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final DATE_TIME_STAMP:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final DAY_TIME_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final DECIMAL:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final ENTITY:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final FLOAT:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final G_DAY:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final G_MONTH:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final G_MONTH_DAY:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final G_YEAR:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final G_YEAR_MONTH:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final HEX_BINARY:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final ID:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final IDREF:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final INT:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final LANGUAGE:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final LONG:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final NAME:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final NCNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final NEGATIVE_INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final NMTOKEN:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final NON_NEGATIVE_INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final NON_POSITIVE_INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final NORMALIZED_STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final NOTATION:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final POSITIVE_INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final SHORT:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final TOKEN:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final UNSIGNED_BYTE:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final UNSIGNED_INT:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final UNSIGNED_LONG:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final UNSIGNED_SHORT:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final YEAR_MONTH_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

.field public static final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/type/BuiltInAtomicType;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic p:Z


# instance fields
.field public final e:I

.field public f:I

.field public g:I

.field public h:Lnet/sf/saxon/type/UType;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Lnet/sf/saxon/value/SequenceType;

.field public l:Lnet/sf/saxon/value/SequenceType;

.field public m:Lnet/sf/saxon/value/SequenceType;

.field public n:Lnet/sf/saxon/value/SequenceType;

.field public stringConverter:Lnet/sf/saxon/type/StringConverter;


# direct methods
.method public static constructor <clinit>()V
    .locals 40

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->o:Ljava/util/Map;

    invoke-static {}, Lnet/sf/saxon/type/AnySimpleType;->getInstance()Lnet/sf/saxon/type/AnySimpleType;

    move-result-object v0

    const-string v1, "A"

    const/16 v2, 0x278

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v1, 0x201

    const-string v2, "AS"

    invoke-static {v1, v0, v2, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v2, 0x202

    const-string v4, "AB"

    invoke-static {v2, v0, v4, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v2

    sput-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v4, 0x206

    const-string v5, "AR"

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v4

    sput-object v4, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v5, 0x207

    const-string v7, "AM"

    invoke-static {v5, v0, v7, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v5

    sput-object v5, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v7, 0x209

    const-string v8, "AA"

    invoke-static {v7, v0, v8, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v7

    sput-object v7, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v7, 0x208

    const-string v8, "AT"

    invoke-static {v7, v0, v8, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v7

    sput-object v7, Lnet/sf/saxon/type/BuiltInAtomicType;->TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v8, 0x20a

    const-string v9, "AH"

    invoke-static {v8, v0, v9, v6}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v8

    sput-object v8, Lnet/sf/saxon/type/BuiltInAtomicType;->G_YEAR_MONTH:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v8, 0x20e

    const-string v9, "AI"

    invoke-static {v8, v0, v9, v6}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v8

    sput-object v8, Lnet/sf/saxon/type/BuiltInAtomicType;->G_MONTH:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v9, 0x20c

    const-string v10, "AJ"

    invoke-static {v9, v0, v10, v6}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v9

    sput-object v9, Lnet/sf/saxon/type/BuiltInAtomicType;->G_MONTH_DAY:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v10, 0x20b

    const-string v11, "AG"

    invoke-static {v10, v0, v11, v6}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v10

    sput-object v10, Lnet/sf/saxon/type/BuiltInAtomicType;->G_YEAR:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v10, 0x20d

    const-string v11, "AK"

    invoke-static {v10, v0, v11, v6}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v10

    sput-object v10, Lnet/sf/saxon/type/BuiltInAtomicType;->G_DAY:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v11, 0x20f

    const-string v12, "AX"

    invoke-static {v11, v0, v12, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v11

    sput-object v11, Lnet/sf/saxon/type/BuiltInAtomicType;->HEX_BINARY:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v12, 0x210

    const-string v13, "A2"

    invoke-static {v12, v0, v13, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v12

    sput-object v12, Lnet/sf/saxon/type/BuiltInAtomicType;->BASE64_BINARY:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v13, 0x211

    const-string v14, "AU"

    invoke-static {v13, v0, v14, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v13

    sput-object v13, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v13, 0x212

    const-string v14, "AQ"

    invoke-static {v13, v0, v14, v6}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v13

    sput-object v13, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v13, 0x213

    const-string v14, "AN"

    invoke-static {v13, v0, v14, v6}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v6

    sput-object v6, Lnet/sf/saxon/type/BuiltInAtomicType;->NOTATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v6, 0x277

    const-string v13, "AZ"

    invoke-static {v6, v0, v13, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v6

    sput-object v6, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v13, 0x203

    const-string v14, "AD"

    invoke-static {v13, v0, v14, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v13

    sput-object v13, Lnet/sf/saxon/type/BuiltInAtomicType;->DECIMAL:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v14, 0x204

    const-string v15, "AF"

    invoke-static {v14, v0, v15, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v14

    sput-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->FLOAT:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v14, 0x205

    const-string v15, "AO"

    invoke-static {v14, v0, v15, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v14

    sput-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v14, 0x215

    const-string v15, "ADI"

    invoke-static {v14, v13, v15, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v14

    sput-object v14, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x216

    move-object/from16 v16, v6

    const-string v6, "ADIN"

    invoke-static {v15, v14, v6, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v6

    sput-object v6, Lnet/sf/saxon/type/BuiltInAtomicType;->NON_POSITIVE_INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x217

    move-object/from16 v17, v12

    const-string v12, "ADINN"

    invoke-static {v15, v6, v12, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v12

    sput-object v12, Lnet/sf/saxon/type/BuiltInAtomicType;->NEGATIVE_INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x218

    move-object/from16 v18, v12

    const-string v12, "ADIL"

    invoke-static {v15, v14, v12, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v12

    sput-object v12, Lnet/sf/saxon/type/BuiltInAtomicType;->LONG:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x219

    move-object/from16 v19, v6

    const-string v6, "ADILI"

    invoke-static {v15, v12, v6, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v6

    sput-object v6, Lnet/sf/saxon/type/BuiltInAtomicType;->INT:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x21a

    move-object/from16 v20, v12

    const-string v12, "ADILIS"

    invoke-static {v15, v6, v12, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v12

    sput-object v12, Lnet/sf/saxon/type/BuiltInAtomicType;->SHORT:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x21b

    move-object/from16 v21, v6

    const-string v6, "ADILISB"

    invoke-static {v15, v12, v6, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v6

    sput-object v6, Lnet/sf/saxon/type/BuiltInAtomicType;->BYTE:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x21c

    move-object/from16 v22, v6

    const-string v6, "ADIP"

    invoke-static {v15, v14, v6, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v6

    sput-object v6, Lnet/sf/saxon/type/BuiltInAtomicType;->NON_NEGATIVE_INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x21d

    move-object/from16 v23, v12

    const-string v12, "ADIPP"

    invoke-static {v15, v6, v12, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v12

    sput-object v12, Lnet/sf/saxon/type/BuiltInAtomicType;->POSITIVE_INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x21e

    move-object/from16 v24, v12

    const-string v12, "ADIPL"

    invoke-static {v15, v6, v12, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v12

    sput-object v12, Lnet/sf/saxon/type/BuiltInAtomicType;->UNSIGNED_LONG:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x21f

    move-object/from16 v25, v6

    const-string v6, "ADIPLI"

    invoke-static {v15, v12, v6, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v6

    sput-object v6, Lnet/sf/saxon/type/BuiltInAtomicType;->UNSIGNED_INT:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x220

    move-object/from16 v26, v12

    const-string v12, "ADIPLIS"

    invoke-static {v15, v6, v12, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v12

    sput-object v12, Lnet/sf/saxon/type/BuiltInAtomicType;->UNSIGNED_SHORT:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x221

    move-object/from16 v27, v6

    const-string v6, "ADIPLISB"

    invoke-static {v15, v12, v6, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v6

    sput-object v6, Lnet/sf/saxon/type/BuiltInAtomicType;->UNSIGNED_BYTE:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x279

    move-object/from16 v28, v6

    const-string v6, "ARY"

    invoke-static {v15, v4, v6, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v6

    sput-object v6, Lnet/sf/saxon/type/BuiltInAtomicType;->YEAR_MONTH_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x27a

    move-object/from16 v29, v12

    const-string v12, "ARD"

    invoke-static {v15, v4, v12, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v12

    sput-object v12, Lnet/sf/saxon/type/BuiltInAtomicType;->DAY_TIME_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x229

    move-object/from16 v30, v11

    const-string v11, "ASN"

    invoke-static {v15, v1, v11, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v11

    sput-object v11, Lnet/sf/saxon/type/BuiltInAtomicType;->NORMALIZED_STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x22a

    move-object/from16 v31, v2

    const-string v2, "ASNT"

    invoke-static {v15, v11, v2, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v2

    sput-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->TOKEN:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x22b

    move-object/from16 v32, v7

    const-string v7, "ASNTL"

    invoke-static {v15, v2, v7, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v7

    sput-object v7, Lnet/sf/saxon/type/BuiltInAtomicType;->LANGUAGE:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x22e

    move-object/from16 v33, v6

    const-string v6, "ASNTN"

    invoke-static {v15, v2, v6, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v6

    sput-object v6, Lnet/sf/saxon/type/BuiltInAtomicType;->NAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x22c

    move-object/from16 v34, v12

    const-string v12, "ASNTK"

    invoke-static {v15, v2, v12, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v12

    sput-object v12, Lnet/sf/saxon/type/BuiltInAtomicType;->NMTOKEN:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x22f

    move-object/from16 v35, v10

    const-string v10, "ASNTNC"

    invoke-static {v15, v6, v10, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v10

    sput-object v10, Lnet/sf/saxon/type/BuiltInAtomicType;->NCNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x230

    move-object/from16 v36, v9

    const-string v9, "ASNTNCI"

    invoke-static {v15, v10, v9, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v9

    sput-object v9, Lnet/sf/saxon/type/BuiltInAtomicType;->ID:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x231

    move-object/from16 v37, v8

    const-string v8, "ASNTNCR"

    invoke-static {v15, v10, v8, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v8

    sput-object v8, Lnet/sf/saxon/type/BuiltInAtomicType;->IDREF:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x233

    move-object/from16 v38, v4

    const-string v4, "ASNTNCE"

    invoke-static {v15, v10, v4, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v4

    sput-object v4, Lnet/sf/saxon/type/BuiltInAtomicType;->ENTITY:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/16 v15, 0x235

    move-object/from16 v39, v14

    const-string v14, "AMP"

    invoke-static {v15, v5, v14, v3}, Lnet/sf/saxon/type/BuiltInAtomicType;->a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v3

    sput-object v3, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME_STAMP:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object v3, Lnet/sf/saxon/type/StringConverter$StringToString;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToString;

    iput-object v3, v0, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    iput-object v3, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToLanguage;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToLanguage;

    iput-object v0, v7, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToNormalizedString;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToNormalizedString;

    iput-object v0, v11, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToToken;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToToken;

    iput-object v0, v2, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToNCName;->TO_NCNAME:Lnet/sf/saxon/type/StringConverter$StringToNCName;

    iput-object v0, v10, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToName;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToName;

    iput-object v0, v6, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToNMTOKEN;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToNMTOKEN;

    iput-object v0, v12, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToNCName;->TO_ID:Lnet/sf/saxon/type/StringConverter$StringToNCName;

    iput-object v0, v9, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToNCName;->TO_IDREF:Lnet/sf/saxon/type/StringConverter$StringToNCName;

    iput-object v0, v8, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToNCName;->TO_ENTITY:Lnet/sf/saxon/type/StringConverter$StringToNCName;

    iput-object v0, v4, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToDecimal;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToDecimal;

    iput-object v0, v13, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToInteger;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToInteger;

    move-object/from16 v1, v39

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToDuration;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToDuration;

    move-object/from16 v1, v38

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToGMonth;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToGMonth;

    move-object/from16 v1, v37

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToGMonthDay;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToGMonthDay;

    move-object/from16 v1, v36

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToGDay;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToGDay;

    move-object/from16 v1, v35

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToDayTimeDuration;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToDayTimeDuration;

    move-object/from16 v1, v34

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToYearMonthDuration;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToYearMonthDuration;

    move-object/from16 v1, v33

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToTime;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToTime;

    move-object/from16 v1, v32

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToBoolean;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToBoolean;

    move-object/from16 v1, v31

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToHexBinary;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToHexBinary;

    move-object/from16 v1, v30

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToBase64Binary;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToBase64Binary;

    move-object/from16 v1, v17

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    sget-object v0, Lnet/sf/saxon/type/StringConverter$StringToUntypedAtomic;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToUntypedAtomic;

    move-object/from16 v1, v16

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;-><init>(Lnet/sf/saxon/type/BuiltInAtomicType;)V

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;-><init>(Lnet/sf/saxon/type/BuiltInAtomicType;)V

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;-><init>(Lnet/sf/saxon/type/BuiltInAtomicType;)V

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;-><init>(Lnet/sf/saxon/type/BuiltInAtomicType;)V

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;-><init>(Lnet/sf/saxon/type/BuiltInAtomicType;)V

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;-><init>(Lnet/sf/saxon/type/BuiltInAtomicType;)V

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;-><init>(Lnet/sf/saxon/type/BuiltInAtomicType;)V

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;-><init>(Lnet/sf/saxon/type/BuiltInAtomicType;)V

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;-><init>(Lnet/sf/saxon/type/BuiltInAtomicType;)V

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;-><init>(Lnet/sf/saxon/type/BuiltInAtomicType;)V

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;-><init>(Lnet/sf/saxon/type/BuiltInAtomicType;)V

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;-><init>(Lnet/sf/saxon/type/BuiltInAtomicType;)V

    iput-object v0, v1, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->j:Z

    iput p1, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->e:I

    return-void
.end method

.method public static a(ILnet/sf/saxon/type/SimpleType;Ljava/lang/String;Z)Lnet/sf/saxon/type/BuiltInAtomicType;
    .locals 2

    new-instance v0, Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/BuiltInAtomicType;-><init>(I)V

    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->setBaseTypeFingerprint(I)V

    invoke-virtual {v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->isPrimitiveType()Z

    move-result v1

    if-eqz v1, :cond_0

    iput p0, v0, Lnet/sf/saxon/type/BuiltInAtomicType;->g:I

    goto :goto_0

    :cond_0
    check-cast p1, Lnet/sf/saxon/type/AtomicType;

    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->getPrimitiveType()I

    move-result p1

    iput p1, v0, Lnet/sf/saxon/type/BuiltInAtomicType;->g:I

    :goto_0
    iget p1, v0, Lnet/sf/saxon/type/BuiltInAtomicType;->g:I

    invoke-static {p1}, Lnet/sf/saxon/type/UType;->fromTypeCode(I)Lnet/sf/saxon/type/UType;

    move-result-object p1

    iput-object p1, v0, Lnet/sf/saxon/type/BuiltInAtomicType;->h:Lnet/sf/saxon/type/UType;

    iput-boolean p3, v0, Lnet/sf/saxon/type/BuiltInAtomicType;->j:Z

    iput-object p2, v0, Lnet/sf/saxon/type/BuiltInAtomicType;->i:Ljava/lang/String;

    invoke-static {p0, v0}, Lnet/sf/saxon/type/BuiltInType;->register(ILnet/sf/saxon/type/SchemaType;)V

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->o:Ljava/util/Map;

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static analyzeContentExpression(Lnet/sf/saxon/type/SimpleType;Lnet/sf/saxon/expr/Expression;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/expr/Expression;->checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 3
    instance-of p2, p1, Lnet/sf/saxon/expr/instruct/ValueOf;

    if-nez p2, :cond_1

    instance-of p2, p1, Lnet/sf/saxon/expr/Literal;

    if-eqz p2, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/expr/Expression;->checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static fromAlphaCode(Ljava/lang/String;)Lnet/sf/saxon/type/BuiltInAtomicType;
    .locals 1

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->o:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method


# virtual methods
.method public final allowsDerivation(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public analyzeContentExpression(Lnet/sf/saxon/expr/Expression;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lnet/sf/saxon/type/BuiltInAtomicType;->analyzeContentExpression(Lnet/sf/saxon/type/SimpleType;Lnet/sf/saxon/expr/Expression;I)V

    return-void
.end method

.method public atomize(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/AtomicSequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->isNilled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lnet/sf/saxon/om/AtomicArray;->EMPTY_ATOMIC_ARRAY:Lnet/sf/saxon/om/AtomicArray;

    return-object p0

    :cond_0
    iget v1, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->e:I

    const/16 v2, 0x201

    if-ne v1, v2, :cond_1

    new-instance p0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object p0

    :cond_1
    const/16 v2, 0x277

    if-ne v1, v2, :cond_2

    invoke-static {v0}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v1, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    if-nez v1, :cond_4

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->getStringConverter(Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/StringConverter;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->isNamespaceSensitive()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/sf/saxon/type/Converter;->setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/type/Converter;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lnet/sf/saxon/type/StringConverter;

    :cond_4
    invoke-virtual {v1, v0}, Lnet/sf/saxon/type/StringConverter;->convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public checkTypeDerivationIsOK(Lnet/sf/saxon/type/SchemaType;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/SchemaException;
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/type/AnySimpleType;->getInstance()Lnet/sf/saxon/type/AnySimpleType;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/BuiltInAtomicType;->isSameType(Lnet/sf/saxon/type/SchemaType;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    const-string v1, " is not validly derived from the type "

    const-string v2, "The type "

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0, p1, p2}, Lnet/sf/saxon/type/SchemaType;->checkTypeDerivationIsOK(Lnet/sf/saxon/type/SchemaType;I)V
    :try_end_0
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    new-instance p2, Lnet/sf/saxon/type/SchemaException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lnet/sf/saxon/type/SchemaException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p2, Lnet/sf/saxon/type/SchemaException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lnet/sf/saxon/type/SchemaException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getFingerprint()I

    move-result p0

    check-cast p1, Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p1}, Lnet/sf/saxon/type/BuiltInAtomicType;->getFingerprint()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAtomizedItemType()Lnet/sf/saxon/type/AtomicType;
    .locals 0

    .line 1
    return-object p0
.end method

.method public bridge synthetic getAtomizedItemType()Lnet/sf/saxon/type/PlainType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getAtomizedItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    return-object p0
.end method

.method public final getBaseType()Lnet/sf/saxon/type/SchemaType;
    .locals 1

    iget p0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->f:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/type/BuiltInType;->getSchemaType(I)Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    return-object p0
.end method

.method public getBasicAlphaCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final getBlock()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBuiltInBaseType()Lnet/sf/saxon/type/SchemaType;
    .locals 2

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getFingerprint()I

    move-result v0

    const/16 v1, 0x3ff

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/BuiltInAtomicType;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final getDerivationMethod()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->e:I

    invoke-static {p0}, Lnet/sf/saxon/om/StandardNames;->getDisplayName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEQName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Q{http://www.w3.org/2001/XMLSchema}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFinalProhibitions()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getFingerprint()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->e:I

    return p0
.end method

.method public getKnownBaseType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->e:I

    invoke-static {p0}, Lnet/sf/saxon/om/StandardNames;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPlainMemberTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lnet/sf/saxon/type/PlainType;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPrimitiveItemType()Lnet/sf/saxon/type/AtomicType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getPrimitiveItemType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveItemType()Lnet/sf/saxon/type/BuiltInAtomicType;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->isPrimitiveType()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/type/ItemType;

    .line 5
    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/BuiltInAtomicType;

    :cond_1
    return-object p0
.end method

.method public bridge synthetic getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getPrimitiveItemType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveType()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->g:I

    return p0
.end method

.method public getRedefinitionLevel()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getStringConverter(Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/StringConverter;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->e:I

    const/16 v1, 0x204

    if-eq v0, v1, :cond_4

    const/16 v1, 0x205

    if-eq v0, v1, :cond_3

    const/16 v1, 0x207

    if-eq v0, v1, :cond_2

    const/16 v1, 0x235

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27b

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No string converter available for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    new-instance p0, Lnet/sf/saxon/type/StringConverter$StringToNotation;

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/StringConverter$StringToNotation;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lnet/sf/saxon/type/StringConverter$StringToQName;

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/StringConverter$StringToQName;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lnet/sf/saxon/type/StringConverter$StringToAnyURI;

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/StringConverter$StringToAnyURI;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lnet/sf/saxon/type/StringConverter$StringToGYear;

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/StringConverter$StringToGYear;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lnet/sf/saxon/type/StringConverter$StringToGYearMonth;

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/StringConverter$StringToGYearMonth;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lnet/sf/saxon/type/StringConverter$StringToDate;

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/StringConverter$StringToDate;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    return-object p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/type/StringConverter$StringToDateTimeStamp;

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/StringConverter$StringToDateTimeStamp;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    return-object p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/type/StringConverter$StringToDateTime;

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/StringConverter$StringToDateTime;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lnet/sf/saxon/lib/ConversionRules;->getStringToDoubleConverter()Lnet/sf/saxon/type/StringToDouble;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Lnet/sf/saxon/type/StringConverter$StringToFloat;

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/StringConverter$StringToFloat;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x209
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x211
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getStructuredQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 3

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    iget p0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->e:I

    invoke-static {p0}, Lnet/sf/saxon/om/StandardNames;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "xs"

    const-string v2, "http://www.w3.org/2001/XMLSchema"

    invoke-direct {v0, v1, v2, p0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTargetNamespace()Ljava/lang/String;
    .locals 0

    const-string p0, "http://www.w3.org/2001/XMLSchema"

    return-object p0
.end method

.method public getTypeName()Lnet/sf/saxon/om/StructuredQName;
    .locals 3

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    iget v1, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->e:I

    invoke-static {v1}, Lnet/sf/saxon/om/StandardNames;->getPrefix(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->e:I

    invoke-static {v2}, Lnet/sf/saxon/om/StandardNames;->getURI(I)Ljava/lang/String;

    move-result-object v2

    iget p0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->e:I

    invoke-static {p0}, Lnet/sf/saxon/om/StandardNames;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/om/AtomicSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->e:I

    const/16 v1, 0x201

    if-ne v0, v1, :cond_0

    new-instance p0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object p0

    :cond_0
    const/16 v1, 0x277

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p3}, Lnet/sf/saxon/type/BuiltInAtomicType;->getStringConverter(Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/StringConverter;

    move-result-object p3

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->isNamespaceSensitive()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p3, p2}, Lnet/sf/saxon/type/Converter;->setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/type/Converter;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Lnet/sf/saxon/type/StringConverter;

    :cond_2
    invoke-virtual {p3, p1}, Lnet/sf/saxon/type/StringConverter;->convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->h:Lnet/sf/saxon/type/UType;

    return-object p0
.end method

.method public final getValidationStatus()Lnet/sf/saxon/type/SchemaValidationStatus;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/SchemaValidationStatus;->VALIDATED:Lnet/sf/saxon/type/SchemaValidationStatus;

    return-object p0
.end method

.method public getWhitespaceAction()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getFingerprint()I

    move-result p0

    const/16 v0, 0x201

    if-eq p0, v0, :cond_1

    const/16 v0, 0x229

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getFingerprint()I

    move-result p0

    return p0
.end method

.method public isAbstract()Z
    .locals 1

    iget p0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->e:I

    const/16 v0, 0x213

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x278

    if-eq p0, v0, :cond_0

    const/16 v0, 0x27b

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isAllowedInXSD10()Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getFingerprint()I

    move-result p0

    const/16 v0, 0x235

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isAnonymousType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAtomicType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isAtomizable(Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isBuiltInType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isComplexType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIdRefType()Z
    .locals 1

    iget p0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->e:I

    const/16 v0, 0x231

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIdType()Z
    .locals 1

    iget p0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->e:I

    const/16 v0, 0x230

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isListType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNamespaceSensitive()Z
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getFingerprint()I

    move-result v0

    :goto_0
    const/16 v1, 0x3ff

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getFingerprint()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 p0, 0x212

    if-eq v0, p0, :cond_2

    const/16 p0, 0x213

    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public isNumericType()Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getPrimitiveItemType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object p0

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->DECIMAL:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->FLOAT:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isOrdered(Z)Z
    .locals 1

    iget-boolean v0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->j:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq p0, p1, :cond_1

    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isPlainType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPrimitiveNumeric()Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getFingerprint()I

    move-result p0

    const/16 v0, 0x215

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x203
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final isPrimitiveType()Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->e:I

    invoke-static {p0}, Lnet/sf/saxon/type/Type;->isPrimitiveAtomicType(I)Z

    move-result p0

    return p0
.end method

.method public isSameType(Lnet/sf/saxon/type/SchemaType;)Z
    .locals 0

    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result p1

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getFingerprint()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSimpleType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isUnionType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 0

    instance-of p2, p1, Lnet/sf/saxon/value/AtomicValue;

    if-eqz p2, :cond_0

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p1

    invoke-static {p1, p0}, Lnet/sf/saxon/type/Type;->isSubType(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public one()Lnet/sf/saxon/value/SequenceType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->k:Lnet/sf/saxon/value/SequenceType;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/value/SequenceType;

    const/16 v1, 0x4000

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/value/SequenceType;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    iput-object v0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->k:Lnet/sf/saxon/value/SequenceType;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->k:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public oneOrMore()Lnet/sf/saxon/value/SequenceType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->l:Lnet/sf/saxon/value/SequenceType;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/value/SequenceType;

    const v1, 0xc000

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/value/SequenceType;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    iput-object v0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->l:Lnet/sf/saxon/value/SequenceType;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->l:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public postprocess(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    return-object p1
.end method

.method public preprocess(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    return-object p1
.end method

.method public final setBaseTypeFingerprint(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->f:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public validate(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 1

    iget p2, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->e:I

    const/16 p3, 0x233

    if-eq p2, p3, :cond_4

    const/16 p3, 0x235

    const/4 v0, 0x0

    if-eq p2, p3, :cond_2

    const/16 p3, 0x277

    if-eq p2, p3, :cond_1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    packed-switch p2, :pswitch_data_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    return-object v0

    :pswitch_1
    check-cast p1, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/value/IntegerValue;->validateAgainstSubType(Lnet/sf/saxon/type/BuiltInAtomicType;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->DECIMAL:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne p0, p2, :cond_1

    move-object p0, p1

    check-cast p0, Lnet/sf/saxon/value/DecimalValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->isWholeNumber()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "xs:decimal value "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be down-cast to xs:integer"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    :pswitch_3
    return-object v0

    :cond_2
    check-cast p1, Lnet/sf/saxon/value/CalendarValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/CalendarValue;->getTimezoneInMinutes()I

    move-result p0

    const/high16 p1, -0x80000000

    if-ne p0, p1, :cond_3

    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    const-string p0, "xs:dateTimeStamp value must have a timezone"

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    :cond_3
    return-object v0

    :cond_4
    :pswitch_4
    iget-object p0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/StringConverter;->validate(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x201
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x215
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x229
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x22e
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x279
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public validateContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->getFingerprint()I

    move-result v0

    const/16 v1, 0x201

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x23d

    if-eq v0, v1, :cond_5

    const/16 v1, 0x277

    if-eq v0, v1, :cond_5

    const/16 v1, 0x278

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->stringConverter:Lnet/sf/saxon/type/StringConverter;

    if-nez v0, :cond_4

    invoke-virtual {p0, p3}, Lnet/sf/saxon/type/BuiltInAtomicType;->getStringConverter(Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/StringConverter;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/type/BuiltInAtomicType;->isNamespaceSensitive()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {v0, p2}, Lnet/sf/saxon/type/Converter;->setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/type/Converter;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/type/StringConverter;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/type/StringConverter;->convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p1

    instance-of p2, p1, Lnet/sf/saxon/type/ValidationFailure;

    if-eqz p2, :cond_1

    check-cast p1, Lnet/sf/saxon/type/ValidationFailure;

    return-object p1

    :cond_1
    iget p0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->e:I

    const/16 p2, 0x213

    if-ne p0, p2, :cond_2

    check-cast p1, Lnet/sf/saxon/value/NotationValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/QualifiedNameValue;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/value/QualifiedNameValue;->getLocalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p0, p2}, Lnet/sf/saxon/lib/ConversionRules;->isDeclaredNotation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Notation {"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/value/QualifiedNameValue;->getNamespaceURI()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "}"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/value/QualifiedNameValue;->getLocalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not declared in the schema"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    return-object v2

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot validate a QName without a namespace resolver"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/StringConverter;->validate(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    return-object v2
.end method

.method public zeroOrMore()Lnet/sf/saxon/value/SequenceType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->n:Lnet/sf/saxon/value/SequenceType;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/value/SequenceType;

    const v1, 0xe000

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/value/SequenceType;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    iput-object v0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->n:Lnet/sf/saxon/value/SequenceType;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->n:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public zeroOrOne()Lnet/sf/saxon/value/SequenceType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->m:Lnet/sf/saxon/value/SequenceType;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/value/SequenceType;

    const/16 v1, 0x6000

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/value/SequenceType;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    iput-object v0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->m:Lnet/sf/saxon/value/SequenceType;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/type/BuiltInAtomicType;->m:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method
