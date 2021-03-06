C $Id: locase.for,v 1.7 1997/03/03 17:17:29 adarby Exp $
      SUBROUTINE LOCASE ( INPSTR, OUTSTR )
C
C VERSION
C      03-MAR-97  AD  Version 3.
C      01-OCT-96  AD  Version 2.
C      01-SEP-96  AD  Version 1.
C
C DESCRIPTION
C     Convert text string to lower case.
C
      IMPLICIT NONE
C
C ARGUMENT
      CHARACTER*(*) INPSTR  !  I  Input string (mixed case)
      CHARACTER*(*) OUTSTR  !  O  Output string (lower case)
C
C LOCAL VARIABLES
      INTEGER      I, J
      CHARACTER*26 LOWER
              SAVE LOWER
              DATA LOWER / 'abcdefghijklmnopqrstuvwxyz' /
C
C EXECUTABLE CODE --------------------------------------------------------------
C
      DO I = 1, MIN ( LEN(INPSTR), LEN(OUTSTR) )
        J = INDEX ( 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', INPSTR(I:I) )
        IF ( J .NE. 0 ) THEN
          OUTSTR(I:I) = LOWER(J:J)
        ELSE
          OUTSTR(I:I) = INPSTR(I:I)
        END IF
      END DO
C
      END 
C-------------------------------------------------------------------------------
C                                NOTICE
C
C     This software module is part of the MIPAS Reference Forward Model supplied
C     to the European Space Agency under ESTEC contract no. 11886/96/NL/GS.
C        
C     All rights, title and interest in and to the copyright
C     and any other proprietary right, is held by
C     The University Corporation for Atmospheric Research, having a
C     correspondence address of P.O. Box 3000, Boulder, Colorado 80307, USA.
C
C     However, note that all inquiries concerning the MIPAS
C     Reference Forward Model should be submitted to the The Manager (Projects),
C     AOPP,  Clarendon Laboratory, Parks Road, Oxford, OX1 3PU, UK.
C     (Tel: +44-8165-272900,    Fax: +44-1865-272924).  
C
C-------------------------------------------------------------------------------
