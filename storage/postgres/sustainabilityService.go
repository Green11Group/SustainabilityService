package postgres

import (
	"context"

	"github.com/jmoiron/sqlx"
	pb "sustainabilityService/genproto/SustainabilityService"
)

type SustainabilityRepo struct {
	db *sqlx.DB
}

func NewSustainabilityRepo(db *sqlx.DB) *SustainabilityRepo {
	return &SustainabilityRepo{db: db}
}

// 1
func (s *SustainabilityRepo) LogImpact(ctx context.Context, in *pb.LogImpactRequest) (*pb.LogImpactResponse, error) {
	return nil, nil
}
// 2
func (s *SustainabilityRepo) GetUserImpact(ctx context.Context, in *pb.GetUserImpactRequest) (*pb.GetUserImpactResponse, error) {
	return nil, nil
}
// 3
func (s *SustainabilityRepo) GetCommunityImpact(ctx context.Context, in *pb.GetCommunityImpactRequest) (*pb.GetCommunityImpactResponse, error) {
	return nil, nil
}
// 4
func (s *SustainabilityRepo) GetChallenges(ctx context.Context, in *pb.GetChallengesRequest) (*pb.GetChallengesResponse, error) {
	return nil, nil
}
// 5
func (s *SustainabilityRepo) JoinChallenge(ctx context.Context, in *pb.JoinChallengeRequest) (*pb.JoinChallengeResponse, error) {
	return nil, nil
}
// 6
func (s *SustainabilityRepo) UpdateChallengeProgress(ctx context.Context, in *pb.UpdateChallengeProgressRequest) (*pb.UpdateChallengeProgressResponse, error) {
	return nil, nil
}
// 7
func (s *SustainabilityRepo) GetUserChallenges(ctx context.Context, in *pb.GetUserChallengesRequest) (*pb.GetUserChallengesResponse, error) {
	return nil, nil
}
// 8
func (s *SustainabilityRepo) GetUserLeaderboard(ctx context.Context, in *pb.GetUserLeaderboardRequest) (*pb.GetUserLeaderboardResponse, error) {
	return nil, nil
}
// 9
func (s *SustainabilityRepo) GetCommunityLeaderboard(ctx context.Context, in *pb.GetCommunityLeaderboardRequest) (*pb.GetCommunityLeaderboardResponse, error) {
	return nil, nil
}
// 10
func (s *SustainabilityRepo) PostChallenges(ctx context.Context, in *pb.PostChallengesRequest) (*pb.PostChallengesResponse, error) {
	return nil, nil
}