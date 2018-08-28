package dao;

import domain.Claim;

public interface ClaimDao extends BaseDao {
	int addClaim(Claim claim);
}
